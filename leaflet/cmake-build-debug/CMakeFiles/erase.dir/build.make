# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/xani/src/soft/clion-2018.2.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/xani/src/soft/clion-2018.2.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xani/src/my/ee/leaflet

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xani/src/my/ee/leaflet/cmake-build-debug

# Utility rule file for erase.

# Include the progress variables for this target.
include CMakeFiles/erase.dir/progress.make

CMakeFiles/erase:
	JLinkExe -device EFM32HG322F64 -speed 4000 -if SWD -CommanderScript /home/xani/src/my/ee/leaflet/toolchain/erase.jlink

erase: CMakeFiles/erase
erase: CMakeFiles/erase.dir/build.make

.PHONY : erase

# Rule to build all files generated by this target.
CMakeFiles/erase.dir/build: erase

.PHONY : CMakeFiles/erase.dir/build

CMakeFiles/erase.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/erase.dir/cmake_clean.cmake
.PHONY : CMakeFiles/erase.dir/clean

CMakeFiles/erase.dir/depend:
	cd /home/xani/src/my/ee/leaflet/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xani/src/my/ee/leaflet /home/xani/src/my/ee/leaflet /home/xani/src/my/ee/leaflet/cmake-build-debug /home/xani/src/my/ee/leaflet/cmake-build-debug /home/xani/src/my/ee/leaflet/cmake-build-debug/CMakeFiles/erase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/erase.dir/depend

