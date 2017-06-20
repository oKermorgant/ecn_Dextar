#include <configuration.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

using namespace std;

/**
 * File reading line by line
 */
Configuration::Configuration(const string& configFile){

    ifstream cfg(configFile);
    _webcamParam = 0; _liveParam = 0; _ellipseHeight = 160; _ellipseWidth = 120; _canny1 = 110; _canny2 = 75; _kernel = 10; _sigma = 1;

    if ( cfg ){
    cout << "Data reading from " << configFile << "..." << endl;
    parseInputFile(configFile);
    cout << "Parameters have been correctly downloaded." << endl;
    } else {
        cerr << "The configFile doesn't exist at the path " << configFile << endl;
        cout << "The default parameters define in the code are used" << endl;
        cout << "ellipse_height = 160, ellipse_width = 120, can1 = 110, can2 = 75, k = 10, s = 1;" << endl;
    }
}

void Configuration::parseInputFile(const string& configFile){

    ifstream cfg(configFile);

    while ( !cfg.eof() ){
        string line;
        getline ( cfg, line);
        parseParameter ( line );
    }
    cfg.close();
    return;
}

/**
 * Loading parameter's value from a line
 */
void Configuration::parseParameter(const string &parameterLine){

    istringstream iss(parameterLine);
    string param;
    iss >> param;

    ////// Parameters
    ////// int _webcamParam, _ellipseHeight, ellipseWidth, _kernel, _sigma, _canny1, _canny2;
    ////// int ellipse_height = 160, ellipse_width = 120, can1 = 110, can2 = 75, k = 10, s = 1;

    if ( param == "webcamParam"){
        int n = 0;
        iss >> n;
        _webcamParam = n;
        cout << "webcam parameter : " << _webcamParam << endl;
        return;
    }

    if ( param == "liveParam"){
        int n = 0;
        iss >> n;
        _liveParam = n;
        cout << "liveParam: " << _liveParam << endl;
        return;
    }

    if ( param == "ellipseHeight"){
        int h = 0;
        iss >> h;
        _ellipseHeight = h;
        cout << "ellipseHeight: " << _ellipseHeight << endl;
        return;
    }

    if ( param == "ellipseWidth"){
        int w = 0;
        iss >> w;
        _ellipseWidth = w;
        cout << "ellipseWidth: " << _ellipseWidth << endl;
        return;
    }

    if ( param == "kernel"){
        int k = 0;
        iss >> k;
        _kernel = k;
        cout << "kernel: " << _kernel << endl;
        return;
    }

    if ( param == "sigma"){
        int s = 0;
        iss >> s;
        _sigma = s;
        cout << "sigma: " << _sigma << endl;
        return;
    }

    if ( param == "canny1"){
        int c1 = 0;
        iss >> c1;
        _canny1 = c1;
        cout << "canny1: " << _canny1 << endl;
        return;
    }

    if ( param == "canny2"){
        int c2 = 0;
        iss >> c2;
        _canny2 = c2;
        cout << "canny2: " << _canny2 << endl;
        return;
    }
}
