#ifndef CONFIGURATION
#define CONFIGURATION

#include <stdio.h>
#include <string>
#include <iostream>
#include <string>

using namespace std;

class Configuration{

public:

    Configuration(const string& configFile);

    const int webcamParam() const { return _webcamParam; }
    const int liveParam() const { return _liveParam; }
    const int ellipseHeight() const { return _ellipseHeight; }
    const int ellipseWidth() const { return _ellipseWidth; }
    const int kernel() const { return _kernel; }
    const int sigma() const { return _sigma; }
    const int canny1() const { return _canny1; }
    const int canny2() const { return _canny2; }

    private :
    int _webcamParam, _liveParam, _ellipseHeight, _ellipseWidth, _kernel, _sigma, _canny1, _canny2;

    void parseInputFile(const string& configFile);
    void parseParameter(const string& parameterLine);
};

#endif // CONFIGURATION

