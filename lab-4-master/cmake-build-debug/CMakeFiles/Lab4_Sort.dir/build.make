# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/drgam/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/drgam/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Lab4_Sort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab4_Sort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab4_Sort.dir/flags.make

CMakeFiles/Lab4_Sort.dir/main.c.o: CMakeFiles/Lab4_Sort.dir/flags.make
CMakeFiles/Lab4_Sort.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Lab4_Sort.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lab4_Sort.dir/main.c.o   -c /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/main.c

CMakeFiles/Lab4_Sort.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lab4_Sort.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/main.c > CMakeFiles/Lab4_Sort.dir/main.c.i

CMakeFiles/Lab4_Sort.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lab4_Sort.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/main.c -o CMakeFiles/Lab4_Sort.dir/main.c.s

# Object files for target Lab4_Sort
Lab4_Sort_OBJECTS = \
"CMakeFiles/Lab4_Sort.dir/main.c.o"

# External object files for target Lab4_Sort
Lab4_Sort_EXTERNAL_OBJECTS =

Lab4_Sort.exe: CMakeFiles/Lab4_Sort.dir/main.c.o
Lab4_Sort.exe: CMakeFiles/Lab4_Sort.dir/build.make
Lab4_Sort.exe: CMakeFiles/Lab4_Sort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Lab4_Sort.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab4_Sort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab4_Sort.dir/build: Lab4_Sort.exe

.PHONY : CMakeFiles/Lab4_Sort.dir/build

CMakeFiles/Lab4_Sort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab4_Sort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab4_Sort.dir/clean

CMakeFiles/Lab4_Sort.dir/depend:
	cd /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug /cygdrive/c/Users/drgam/CLionProjects/lab-4-master/lab-4-master/cmake-build-debug/CMakeFiles/Lab4_Sort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lab4_Sort.dir/depend

