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
CMAKE_COMMAND = /snap/clion/39/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/39/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilshat/operating_systems_homeworks/week9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilshat/operating_systems_homeworks/week9/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/week9.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/week9.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/week9.dir/flags.make

CMakeFiles/week9.dir/exercise_1.c.o: CMakeFiles/week9.dir/flags.make
CMakeFiles/week9.dir/exercise_1.c.o: ../exercise_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilshat/operating_systems_homeworks/week9/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/week9.dir/exercise_1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/week9.dir/exercise_1.c.o   -c /home/ilshat/operating_systems_homeworks/week9/exercise_1.c

CMakeFiles/week9.dir/exercise_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/week9.dir/exercise_1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ilshat/operating_systems_homeworks/week9/exercise_1.c > CMakeFiles/week9.dir/exercise_1.c.i

CMakeFiles/week9.dir/exercise_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/week9.dir/exercise_1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ilshat/operating_systems_homeworks/week9/exercise_1.c -o CMakeFiles/week9.dir/exercise_1.c.s

# Object files for target week9
week9_OBJECTS = \
"CMakeFiles/week9.dir/exercise_1.c.o"

# External object files for target week9
week9_EXTERNAL_OBJECTS =

week9: CMakeFiles/week9.dir/exercise_1.c.o
week9: CMakeFiles/week9.dir/build.make
week9: CMakeFiles/week9.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilshat/operating_systems_homeworks/week9/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable week9"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/week9.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/week9.dir/build: week9

.PHONY : CMakeFiles/week9.dir/build

CMakeFiles/week9.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/week9.dir/cmake_clean.cmake
.PHONY : CMakeFiles/week9.dir/clean

CMakeFiles/week9.dir/depend:
	cd /home/ilshat/operating_systems_homeworks/week9/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilshat/operating_systems_homeworks/week9 /home/ilshat/operating_systems_homeworks/week9 /home/ilshat/operating_systems_homeworks/week9/cmake-build-debug /home/ilshat/operating_systems_homeworks/week9/cmake-build-debug /home/ilshat/operating_systems_homeworks/week9/cmake-build-debug/CMakeFiles/week9.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/week9.dir/depend

