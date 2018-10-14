#ifndef PARSER
#define PARSER

#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <string>

// A basic file parser for this application
struct Parser
{
    Parser(std::string filename)
    {
        std::ifstream config(filename,std::ios::in);
        if(!config.is_open())
            config.open("../" + filename, std::ios::in);

        if(config.is_open())
        {

            std::string key,line;

            float val;

            while(std::getline(config, line))
            {
                if((line.compare(0,1,"#") != 0) && (line.size() > 2))
                {
                    std::stringstream ss;
                    ss << line;
                    ss >> key;
                    ss >> val;

                    keys.push_back(key);
                    values.push_back(val);
                }
            }
        }
    }

    float Get(std::string key)
    {
        for(int i=0;i<keys.size();++i)
        {
            if(keys[i] == key)
                return values[i];
        }
        return 0;
    }

    std::vector<std::string> keys;
    std::vector<float> values;

};

#endif // PARSER

