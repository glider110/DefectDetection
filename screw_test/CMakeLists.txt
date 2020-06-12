# CMake 最低版本号要求
cmake_minimum_required(VERSION 3.10.2)
# 项目信息
project(testD)



# 添加第三方的库
set(INC_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(LINK_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libdefect.so)


message(${INC_DIR})
message(${LINK_DIR})



add_executable(testDE  test.cpp)
target_include_directories(testDE PUBLIC ${INC_DIR})
target_link_libraries(testDE PUBLIC ${LINK_DIR})
set_property(TARGET testDE PROPERTY CXX_STANDARD 11)














