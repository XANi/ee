# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/xani/src/soft/clion-2020.1.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/xani/src/soft/clion-2020.1.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xani/src/my/ee/lpc1114blinky

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo

# Include any dependencies generated for this target.
include CMakeFiles/lpc1114blinky.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lpc1114blinky.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lpc1114blinky.dir/flags.make

CMakeFiles/lpc1114blinky.dir/src/main.c.o: CMakeFiles/lpc1114blinky.dir/flags.make
CMakeFiles/lpc1114blinky.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lpc1114blinky.dir/src/main.c.o"
	/home/xani/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lpc1114blinky.dir/src/main.c.o   -c /home/xani/src/my/ee/lpc1114blinky/src/main.c

CMakeFiles/lpc1114blinky.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lpc1114blinky.dir/src/main.c.i"
	/home/xani/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xani/src/my/ee/lpc1114blinky/src/main.c > CMakeFiles/lpc1114blinky.dir/src/main.c.i

CMakeFiles/lpc1114blinky.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lpc1114blinky.dir/src/main.c.s"
	/home/xani/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xani/src/my/ee/lpc1114blinky/src/main.c -o CMakeFiles/lpc1114blinky.dir/src/main.c.s

# Object files for target lpc1114blinky
lpc1114blinky_OBJECTS = \
"CMakeFiles/lpc1114blinky.dir/src/main.c.o"

# External object files for target lpc1114blinky
lpc1114blinky_EXTERNAL_OBJECTS =

lpc1114blinky: CMakeFiles/lpc1114blinky.dir/src/main.c.o
lpc1114blinky: CMakeFiles/lpc1114blinky.dir/build.make
lpc1114blinky: CMakeFiles/lpc1114blinky.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lpc1114blinky"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lpc1114blinky.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lpc1114blinky.dir/build: lpc1114blinky

.PHONY : CMakeFiles/lpc1114blinky.dir/build

CMakeFiles/lpc1114blinky.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lpc1114blinky.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lpc1114blinky.dir/clean

CMakeFiles/lpc1114blinky.dir/depend:
	cd /home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xani/src/my/ee/lpc1114blinky /home/xani/src/my/ee/lpc1114blinky /home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo /home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo /home/xani/src/my/ee/lpc1114blinky/cmake-build-relwithdebinfo/CMakeFiles/lpc1114blinky.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lpc1114blinky.dir/depend

