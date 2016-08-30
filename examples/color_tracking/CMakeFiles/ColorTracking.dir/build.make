# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/clem/Programmation/Mongolo/examples/color_tracking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/clem/Programmation/Mongolo/examples/color_tracking

# Include any dependencies generated for this target.
include CMakeFiles/ColorTracking.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ColorTracking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ColorTracking.dir/flags.make

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o: CMakeFiles/ColorTracking.dir/flags.make
CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o: ColorTracking.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/clem/Programmation/Mongolo/examples/color_tracking/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o -c /home/clem/Programmation/Mongolo/examples/color_tracking/ColorTracking.cpp

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ColorTracking.dir/ColorTracking.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/clem/Programmation/Mongolo/examples/color_tracking/ColorTracking.cpp > CMakeFiles/ColorTracking.dir/ColorTracking.cpp.i

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ColorTracking.dir/ColorTracking.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/clem/Programmation/Mongolo/examples/color_tracking/ColorTracking.cpp -o CMakeFiles/ColorTracking.dir/ColorTracking.cpp.s

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.requires:
.PHONY : CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.requires

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.provides: CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.requires
	$(MAKE) -f CMakeFiles/ColorTracking.dir/build.make CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.provides.build
.PHONY : CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.provides

CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.provides.build: CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o

# Object files for target ColorTracking
ColorTracking_OBJECTS = \
"CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o"

# External object files for target ColorTracking
ColorTracking_EXTERNAL_OBJECTS =

ColorTracking: CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o
ColorTracking: CMakeFiles/ColorTracking.dir/build.make
ColorTracking: /usr/local/lib/libopencv_videostab.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_video.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_ts.a
ColorTracking: /usr/local/lib/libopencv_superres.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_stitching.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_photo.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_ocl.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_objdetect.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_nonfree.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_ml.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_legacy.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_imgproc.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_highgui.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_gpu.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_flann.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_features2d.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_core.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_contrib.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_calib3d.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_nonfree.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_ocl.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_gpu.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_photo.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_objdetect.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_legacy.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_video.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_ml.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_calib3d.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_features2d.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_highgui.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_imgproc.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_flann.so.2.4.13
ColorTracking: /usr/local/lib/libopencv_core.so.2.4.13
ColorTracking: CMakeFiles/ColorTracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ColorTracking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ColorTracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ColorTracking.dir/build: ColorTracking
.PHONY : CMakeFiles/ColorTracking.dir/build

CMakeFiles/ColorTracking.dir/requires: CMakeFiles/ColorTracking.dir/ColorTracking.cpp.o.requires
.PHONY : CMakeFiles/ColorTracking.dir/requires

CMakeFiles/ColorTracking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ColorTracking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ColorTracking.dir/clean

CMakeFiles/ColorTracking.dir/depend:
	cd /home/clem/Programmation/Mongolo/examples/color_tracking && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clem/Programmation/Mongolo/examples/color_tracking /home/clem/Programmation/Mongolo/examples/color_tracking /home/clem/Programmation/Mongolo/examples/color_tracking /home/clem/Programmation/Mongolo/examples/color_tracking /home/clem/Programmation/Mongolo/examples/color_tracking/CMakeFiles/ColorTracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ColorTracking.dir/depend

