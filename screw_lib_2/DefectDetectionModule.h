#pragma once
#include <iostream>
#include  "base64.h"
class DefectDetectionModule
{
public:
	DefectDetectionModule();
	~DefectDetectionModule();
	void screwDetect(std::string imgbase64, bool &screw_result);


};

