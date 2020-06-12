#include "DefectDetectionModule.h"
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
# include <halconcpp/HalconCpp.h>
# include <halconcpp/HDevThread.h>
using namespace std;
using namespace HalconCpp;

DefectDetectionModule::DefectDetectionModule()
{
}

DefectDetectionModule::~DefectDetectionModule()
{
}

void DefectDetectionModule::screwDetect()
{
	// Local iconic variables
	HObject  ho_Image_OK, ho_Rectangle_screw1, ho_Image_OK1;
	HObject  ho_ImageReduced_screw1, ho_Image_OK2, ho_Image;
	HObject  ho_Image_gray, ho_EdgeAmplitude1, ho_EdgeAmplitude;
	HObject  ho_Regions, ho_Connection, ho_SelectedRegions, ho_Objects;

	// Local control variables
	HTuple  hv_WindowHandle, hv_Row_screw11, hv_Column_screw11;
	HTuple  hv_Row_screw12, hv_Column_screw12, hv_i, hv_FileNames;
	HTuple  hv_J, hv_Convexity, hv_Area, hv_Row, hv_Column, hv_MLPHandle;

	std::cout << "===============================================================" << std::endl;
	std::cout << "�������S10������˿���׶�..." << std::endl;

	int row11, col11, row12, col12;
	ReadImage(&ho_Image_OK, "screwclasstest.bmp");
	ifstream fin11("rect1.txt");
	fin11 >> row11;


	ifstream fin22("rect2.txt");
	fin22 >> col11;


	ifstream fin33("rect3.txt");
	fin33 >> row12;
	ifstream fin44("rect4.txt");
	fin44 >> col12;


	GenRectangle1(&ho_Rectangle_screw1, row11, col11, row12, col12);

	HObject ho_ImageReduced1;
	ReduceDomain(ho_Image_OK, ho_Rectangle_screw1, &ho_ImageReduced1);
	CropDomain(ho_ImageReduced1, &ho_Image);



	// dev_update_window(...); only in hdevelop
	Rgb1ToGray(ho_Image, &ho_Image_gray);
	SobelAmp(ho_Image_gray, &ho_EdgeAmplitude1, "sum_abs", 3);
	Emphasize(ho_EdgeAmplitude1, &ho_EdgeAmplitude, 10, 10, 1.5);
	Threshold(ho_EdgeAmplitude, &ho_Regions, 45, 255);
	Connection(ho_Regions, &ho_Connection);

	HTuple len1, len2, hv_Colors, hv_height, hv_width, hv_rectangularity;
	HObject ho_Objects_one;
	CountObj(ho_Connection, &len1);
	std::cout << "===============================================================" << std::endl;
	std::cout << "��һ�ηָ���object����:" << len1.D() << std::endl;
	SelectShape(ho_Connection, &ho_SelectedRegions, "area", "and", 40, 500);
	FillUp(ho_SelectedRegions, &ho_Objects);
	CountObj(ho_Objects, &len2);
	std::cout << "��һ�ηָ���object����:" << len2.D() << std::endl;



	if (len2 == 0 || len2 > 2)
	{
		std::cout << "s10���ò��ϸ�" << std::endl;
	}

	HTuple hv_Area_temp = 0;
	for (int k = 1; k < len2 + 1; k++)
	{


		AreaCenter(ho_Objects[k], &hv_Area, &hv_Row, &hv_Column);
		RegionFeatures(ho_Objects[k], "height", &hv_height);
		RegionFeatures(ho_Objects[k], "width", &hv_width);
		RegionFeatures(ho_Objects[k], "rectangularity", &hv_rectangularity);
		std::cout << "===============================================================" << std::endl;
		std::cout << "�������:" << hv_Area.D() << std::endl;
		std::cout << "�������ģ�row��:" << hv_Row.D() << std::endl;
		std::cout << "����߶�:" << hv_height.D() << std::endl;
		std::cout << "������:" << hv_width.D() << std::endl;
		std::cout << "���ζ�:" << hv_rectangularity.D() << std::endl;
		hv_Area_temp = hv_Area_temp + hv_Area;
	}
	std::cout << "�����������:" << hv_Area_temp.D() << std::endl;
	RegionFeatures(ho_Objects[1], "height", &hv_height);
	RegionFeatures(ho_Objects[1], "width", &hv_width);
	RegionFeatures(ho_Objects[1], "rectangularity", &hv_rectangularity);

	AreaCenter(ho_Objects[1], &hv_Area, &hv_Row, &hv_Column);


	std::cout << "ɸѡ����ֵ�߶�Ϊ:" << hv_Row.D() << std::endl;
	std::cout << "===============================================================" << std::endl;
	if (1 == (hv_height > 15.00 || hv_Area > 300))
	{

		std::cout << "��˿�ɶ�" << std::endl;
	}
	else if (1 == (hv_height < 15.00 && hv_rectangularity < 0.4))
	{

		std::cout << "�ϸ�" << std::endl;
	}
	else if (1 == (hv_rectangularity > 0.4))
	{
		std::cout << "δ������˿" << std::endl;
	}
	else
	{
		std::cout << "����쳣" << std::endl;
	}

	while (true)
	{

	}

	system("pause");
}

