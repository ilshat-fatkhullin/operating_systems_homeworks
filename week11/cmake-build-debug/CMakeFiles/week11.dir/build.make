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
CMAKE_COMMAND = /snap/clion/44/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/44/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilshat/operating_systems_homeworks/week11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilshat/operating_systems_homeworks/week11/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/week11.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/week11.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/week11.dir/flags.make

CMakeFiles/week11.dir/ex4.c.o: CMakeFiles/week11.dir/flags.make
CMakeFiles/week11.dir/ex4.c.o: ../ex4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilshat/operating_systems_homeworks/week11/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/week11.dir/ex4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/week11.dir/ex4.c.o   -c /home/ilshat/operating_systems_homeworks/week11/ex4.c

CMakeFiles/week11.dir/ex4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/week11.dir/ex4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ilshat/operating_systems_homeworks/week11/ex4.c > CMakeFiles/week11.dir/ex4.c.i

CMakeFiles/week11.dir/ex4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/week11.dir/ex4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ilshat/operating_systems_homeworks/week11/ex4.c -o CMakeFiles/week11.dir/ex4.c.s

# Object files for target week11
week11_OBJECTS = \
"CMakeFiles/week11.dir/ex4.c.o"

# External object files for target week11
week11_EXTERNAL_OBJECTS =

week11: CMakeFiles/week11.dir/ex4.c.o
week11: CMakeFiles/week11.dir/build.make
week11: CMakeFiles/week11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilshat/operating_systems_homeworks/week11/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable week11"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/week11.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/week11.dir/build: week11

.PHONY : CMakeFiles/week11.dir/build

CMakeFiles/week11.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/week11.dir/cmake_clean.cmake
.PHONY : CMakeFiles/week11.dir/clean

CMakeFiles/week11.dir/depend:
	cd /home/ilshat/operating_systems_homeworks/week11/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilshat/operating_systems_homeworks/week11 /home/ilshat/operating_systems_homeworks/week11 /home/ilshat/operating_systems_homeworks/week11/cmake-build-debug /home/ilshat/operating_systems_homeworks/week11/cmake-build-debug /home/ilshat/operating_systems_homeworks/week11/cmake-build-debug/CMakeFiles/week11.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/week11.dir/depend
