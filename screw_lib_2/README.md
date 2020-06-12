# S10DefectDetection
 1.修改函数接口 封装为libdefect.so 输入为base64的图像字符串信息，输出为bool型 合格与否
 2.测试封装接口为testRun 可直接运行。



cmake应该注意问题：
  

1.封装so可以指定多的.cpp .h到src目录去 区别于引用其他库。
2.运行的时候要把头文件出和测试文件同级目录。
