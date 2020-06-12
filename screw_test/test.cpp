#include "DefectDetectionModule.h"
#include <string>
#include <base64.h>
#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace std;
int main(int argc, char *argv[])
{

	fstream f;
	f.open("class4.bmp", ios::in | ios::binary);
	f.seekg(0, std::ios_base::end);     //设置偏移量至文件结尾
	std::streampos sp = f.tellg();      //获取文件大小
	int size = sp;

	char* buffer = (char*)malloc(sizeof(char)*size);
	f.seekg(0, std::ios_base::beg);     //设置偏移量至文件开头
	f.read(buffer, size);                //将文件内容读入buffer
	cout << "file size:" << size << endl;

	string imgBase64 = base64_encode(buffer, size);         //编码
	cout << "img base64 encode size:" << imgBase64.size() << endl;

	

	bool screw_result;
	DefectDetectionModule  ddm;
	ddm.screwDetect(imgBase64, screw_result);
	
	system("pause");
	return 0;
}
