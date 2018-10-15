#ifndef PARSER
#define PARSER

#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <string>
#include <map>

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
          dict[key] = val;
        }
      }
    }
  }

  template <class T>
  void read(const std::string &key, T& value)
  {
    for(const auto &elem: dict)
    {
      if(elem.first == key)
      {
        value = static_cast<T>(elem.second);
        break;
      }
    }
  }
  std::map<std::string, float> dict;
};

struct Config
{
  Config(std::string filename)
  {
    Parser dextar_config(filename);
    dextar_config.read("webcamParam", vid);
    dextar_config.read("autoLoad", auto_pic);
    normal_mode = (auto_pic == -1);
    dextar_config.read("drawChains", draw);
    dextar_config.read("videoRecord", vidRec);
    dextar_config.read("pixelated", pixel);
    dextar_config.read("ellipseHeight", ellipse_height);
    dextar_config.read("ellipseWidth", ellipse_width);
    dextar_config.read("blur", k);
    dextar_config.read("lower", lower);
    dextar_config.read("upper", upper);

  }
  bool normal_mode;
  int vid, auto_pic, draw, vidRec, pixel, ellipse_height, ellipse_width, k;
  int lower, upper;
};

#endif // PARSER

