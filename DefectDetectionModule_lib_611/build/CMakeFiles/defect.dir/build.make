# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gxf/桌面/DefectDetectionModule_lib_611

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gxf/桌面/DefectDetectionModule_lib_611/build

# Include any dependencies generated for this target.
include CMakeFiles/defect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/defect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/defect.dir/flags.make

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o: CMakeFiles/defect.dir/flags.make
CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o: ../defect/DefectDetectionModule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxf/桌面/DefectDetectionModule_lib_611/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o -c /home/gxf/桌面/DefectDetectionModule_lib_611/defect/DefectDetectionModule.cpp

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxf/桌面/DefectDetectionModule_lib_611/defect/DefectDetectionModule.cpp > CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.i

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxf/桌面/DefectDetectionModule_lib_611/defect/DefectDetectionModule.cpp -o CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.s

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.requires:

.PHONY : CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.requires

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.provides: CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.requires
	$(MAKE) -f CMakeFiles/defect.dir/build.make CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.provides.build
.PHONY : CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.provides

CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.provides.build: CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o


CMakeFiles/defect.dir/base64/base64.cpp.o: CMakeFiles/defect.dir/flags.make
CMakeFiles/defect.dir/base64/base64.cpp.o: ../base64/base64.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxf/桌面/DefectDetectionModule_lib_611/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/defect.dir/base64/base64.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/defect.dir/base64/base64.cpp.o -c /home/gxf/桌面/DefectDetectionModule_lib_611/base64/base64.cpp

CMakeFiles/defect.dir/base64/base64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/defect.dir/base64/base64.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxf/桌面/DefectDetectionModule_lib_611/base64/base64.cpp > CMakeFiles/defect.dir/base64/base64.cpp.i

CMakeFiles/defect.dir/base64/base64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/defect.dir/base64/base64.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxf/桌面/DefectDetectionModule_lib_611/base64/base64.cpp -o CMakeFiles/defect.dir/base64/base64.cpp.s

CMakeFiles/defect.dir/base64/base64.cpp.o.requires:

.PHONY : CMakeFiles/defect.dir/base64/base64.cpp.o.requires

CMakeFiles/defect.dir/base64/base64.cpp.o.provides: CMakeFiles/defect.dir/base64/base64.cpp.o.requires
	$(MAKE) -f CMakeFiles/defect.dir/build.make CMakeFiles/defect.dir/base64/base64.cpp.o.provides.build
.PHONY : CMakeFiles/defect.dir/base64/base64.cpp.o.provides

CMakeFiles/defect.dir/base64/base64.cpp.o.provides.build: CMakeFiles/defect.dir/base64/base64.cpp.o


# Object files for target defect
defect_OBJECTS = \
"CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o" \
"CMakeFiles/defect.dir/base64/base64.cpp.o"

# External object files for target defect
defect_EXTERNAL_OBJECTS =

libdefect.so: CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o
libdefect.so: CMakeFiles/defect.dir/base64/base64.cpp.o
libdefect.so: CMakeFiles/defect.dir/build.make
libdefect.so: /opt/halcon/lib/x64-linux/libhalcon.so
libdefect.so: /opt/halcon/lib/x64-linux/libhalconc.so
libdefect.so: /opt/halcon/lib/x64-linux/libhalconcpp.so
libdefect.so: CMakeFiles/defect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxf/桌面/DefectDetectionModule_lib_611/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libdefect.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/defect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/defect.dir/build: libdefect.so

.PHONY : CMakeFiles/defect.dir/build

CMakeFiles/defect.dir/requires: CMakeFiles/defect.dir/defect/DefectDetectionModule.cpp.o.requires
CMakeFiles/defect.dir/requires: CMakeFiles/defect.dir/base64/base64.cpp.o.requires

.PHONY : CMakeFiles/defect.dir/requires

CMakeFiles/defect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/defect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/defect.dir/clean

CMakeFiles/defect.dir/depend:
	cd /home/gxf/桌面/DefectDetectionModule_lib_611/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxf/桌面/DefectDetectionModule_lib_611 /home/gxf/桌面/DefectDetectionModule_lib_611 /home/gxf/桌面/DefectDetectionModule_lib_611/build /home/gxf/桌面/DefectDetectionModule_lib_611/build /home/gxf/桌面/DefectDetectionModule_lib_611/build/CMakeFiles/defect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/defect.dir/depend
