#ifndef FIND_CHAINS_H
#define FIND_CHAINS_H

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/video.hpp>
#include <opencv2/highgui.hpp>
#include <chain_sequence.h>

using namespace std;
using namespace cv;

void DrawChain(const vector<vector<Point> > &_contours, ChainSequence &_seq, cv::Mat _im, string window, int wait = 1, const string filename = "")
{
    cv::Mat imdraw;_im.copyTo(imdraw);

    Size s(_im.cols, _im.rows);
    cv::VideoWriter writer(filename, VideoWriter::fourcc('H','2','6','4'), 60, s, true);

    // draw points
    Point p1,p2;
    double cost = 0;
    for(unsigned int i=0;i<_seq.ordering_.size();++i)
    {
        // line to the previous one
        if(i != 0)
        {
            if(_seq.dir_[i-1])    p1 = _contours[_seq.ordering_[i-1]].front();
            else                    p1 = _contours[_seq.ordering_[i-1]].back();
            if(_seq.dir_[i])      p2 = _contours[_seq.ordering_[i]].back();
            else                    p2 = _contours[_seq.ordering_[i]].front();
            cv::line(imdraw, p1,p2, Scalar(0,0,255),2);
            imshow(window, imdraw);
            if(filename != "")
                writer << imdraw;
            cv::waitKey(2*wait);
        }


        for(unsigned int j=0;j<_contours[_seq.ordering_[i]].size();++j)
        {
            if(_seq.dir_[i])
                cv::circle(imdraw, _contours[_seq.ordering_[i]][_contours[_seq.ordering_[i]].size()-j-1], 1,Scalar(0,255,0));
            else
                cv::circle(imdraw, _contours[_seq.ordering_[i]][j], 1,Scalar(0,255,0));
            imshow(window, imdraw);
            if(filename != "")
                writer << imdraw;
            cv::waitKey(wait);
        }
    }

}


// this function takes a closed contour and finds the inner independent chains
// start from the given seed points
// append found chains to the given argument
unsigned int FindChains(vector<Point> &_contour, vector<Point> _seeds, vector<vector<Point> > &_chains)
{
    // some parameters
    const unsigned int min_length = 15;
    const unsigned int dot_size = 5;
    const unsigned int max_dist = 10;
    const unsigned int length = _chains.size();

    for(Point seed: _seeds) // loop by value is on purpose
    {
        // start a chain from this seed
        vector<Point> chain;
        chain.push_back(seed);

        // erase possible copy of the seed in the contour
        while(std::find(_contour.begin(), _contour.end(), seed) != _contour.end())
            _contour.erase(std::find(_contour.begin(), _contour.end(), seed));


        double d;
        vector<Point> neighboor;
        unsigned int new_chains;
        while(_contour.size())
        {
            // find nearest point from seed in contour
            d = 400;
            for(auto &point: _contour)
            {
                // skip if this point is among the given seeds
                if(std::find( _seeds.begin(), _seeds.end(), point) == _seeds.end())
                {
                    if(PointDist(seed, point) < d)
                    {
                        neighboor.clear();
                        neighboor.push_back(point);
                        d = PointDist(seed, point);
                    }
                    else if(PointDist(seed, point) == d)    // same best distance but another neighboor
                        neighboor.push_back(point);
                }
            }
            //cout << "Smallest distance is " << d << " (" << neighboor.size() << " neighboors)" << endl;

            if(d == 0)  // not neighboors but same point -> erase
            {
                for(auto &point: neighboor)
                    _contour.erase(std::find(_contour.begin(), _contour.end(), point));
            }
            else
            {
                if(d < max_dist && neighboor.size() < dot_size)   // a few, near neighboors, that's the chain continuing
                {
                    for(auto &point: neighboor)
                        chain.push_back(point);
                    seed = neighboor[0];
                    _contour.erase(std::find(_contour.begin(), _contour.end(), neighboor[0]));
                }
                else    // neighboors are either too far or too many -> new chains
                {
                    new_chains+= FindChains(_contour, neighboor, _chains);
                    if(new_chains == 1) // only one new chain from several neighboors, it was actually the same chain
                    {
                        std::cout << "Found continuing chain" << std::endl;
                        // append
                        for(int i=0;i<_chains.back().size();++i)
                            chain.push_back(_chains.back()[i]);
                        // delete last found
                        _chains.erase(_chains.end()-1);
                    }
                    break;
                }
            }
        }
        if(chain.size() > min_length)
            _chains.push_back(chain);
    }
    //  cout << "Found " << _chains.size() - length << " new chains from " << _seeds.size() << " seeds" << std::endl;
    return _chains.size() - length;
}


void RefineContours(vector<vector<Point> > &_contours)
{    
    vector<vector<Point> > chains;
    chains.clear();
    double x, y, d;
    Point cog, p1;

    // find and append chains corresponding to each of the initial contours
    for(auto & contour: _contours)
    {
        // compute COG
        x = y = 0;
        for(auto &point: contour)
        {
            x += point.x;
            y += point.y;
        }
        cog.x = int(x/contour.size());
        cog.y = int(y/contour.size());

        // get farest from COG
        p1 = contour[0];
        d = PointDist(cog, p1);
        for(auto &point: contour)
        {
            if(PointDist(cog, point) > d)
            {
                d = PointDist(cog, point);
                p1 = point;
            }
        }

        // find chains starting from p1 as only seed
        vector<Point> seeds(1);seeds[0] = p1;
        FindChains(contour, seeds, chains);
    }

    std::cout << "Found " << chains.size() << " raw chains" << std::endl;

    // try to regroup chains that have a isolated near start / end position
    bool stitch = true;
    vector<Point> start,end;
    vector<int> neighboors(4,0), neighboor_idx(4,0);
    const int max_dist = 75;   // actually square of distance
    int stitch_count = 0;

    while(stitch)
    {
        stitch = false;
        // build chains start / end points
        start.clear();
        end.clear();
        for(auto &chain: chains)
        {
            start.push_back(chain[0]);
            end.push_back(chain.back());
        }

        // compare chains start / end points
        for(int i=0;i<chains.size()-1;++i)
        {
            for(auto &n: neighboors)
                n = 0;
            //neighboors.resize(4,0); // start-start, start-end, end-start, end-end
            for(int j=0;j<chains.size();++j)
            {
                if(j != i)
                {
                    // do all 4 checks
                    if(PointDist(start[i],start[j]) < max_dist)
                    {
                        neighboors[0] += 1;
                        neighboor_idx[0] = j;
                    }
                    if(PointDist(start[i],end[j]) < max_dist)
                    {
                        neighboors[1] += 1;
                        neighboor_idx[1] = j;
                    }
                    if(PointDist(end[i],start[j]) < max_dist)
                    {
                        neighboors[2] += 1;
                        neighboor_idx[2] = j;
                    }
                    if(PointDist(end[i],end[j]) < max_dist)
                    {
                        neighboors[3] += 1;
                        neighboor_idx[3] = j;
                    }
                }
            }

            // count how many neighboors we have found
            for(int j=0;j<3;++j)
            {
                if(neighboors[j] == 1)  // only two chains start/end in this area -> stitch
                {
                    // simplify with this stitch
                    stitch = true;
                    stitch_count++;

                    int k = neighboor_idx[j];   // index of stitched chain

                    if(j == 0 || j == 3)    // we have to reverse chain k to stich
                        std::reverse(chains[k].begin(), chains[k].end());

                    if(j == 0 || j == 1)    // chain i is stitched after chain k -> swap values
                        std::swap(i,k);


                    // append chain k after chain i and erase chain k
                    for(auto& point: chains[k])
                        chains[i].push_back(point);
                    chains.erase(chains.begin()+k);

                    // restart with new chains
                    break;
                }
            }

            if(stitch)
                break;
        }
    }

    std::cout << "Could stitch " << stitch_count << " chains -> " << chains.size() << " final chains" <<  std::endl;

    // erase given contours with found chains
    _contours = chains;
}



#endif // FIND_CHAINS_H
