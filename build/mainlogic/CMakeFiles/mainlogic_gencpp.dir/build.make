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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/resps/rovi2/Rovi2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/resps/rovi2/Rovi2/build

# Utility rule file for mainlogic_gencpp.

# Include the progress variables for this target.
include mainlogic/CMakeFiles/mainlogic_gencpp.dir/progress.make

mainlogic_gencpp: mainlogic/CMakeFiles/mainlogic_gencpp.dir/build.make

.PHONY : mainlogic_gencpp

# Rule to build all files generated by this target.
mainlogic/CMakeFiles/mainlogic_gencpp.dir/build: mainlogic_gencpp

.PHONY : mainlogic/CMakeFiles/mainlogic_gencpp.dir/build

mainlogic/CMakeFiles/mainlogic_gencpp.dir/clean:
	cd /home/resps/rovi2/Rovi2/build/mainlogic && $(CMAKE_COMMAND) -P CMakeFiles/mainlogic_gencpp.dir/cmake_clean.cmake
.PHONY : mainlogic/CMakeFiles/mainlogic_gencpp.dir/clean

mainlogic/CMakeFiles/mainlogic_gencpp.dir/depend:
	cd /home/resps/rovi2/Rovi2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/resps/rovi2/Rovi2/src /home/resps/rovi2/Rovi2/src/mainlogic /home/resps/rovi2/Rovi2/build /home/resps/rovi2/Rovi2/build/mainlogic /home/resps/rovi2/Rovi2/build/mainlogic/CMakeFiles/mainlogic_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mainlogic/CMakeFiles/mainlogic_gencpp.dir/depend

