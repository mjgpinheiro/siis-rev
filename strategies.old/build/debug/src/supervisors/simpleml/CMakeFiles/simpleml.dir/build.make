# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/frederic/dev/trading/siis-rev/strategies

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frederic/dev/trading/siis-rev/strategies/build/debug

# Include any dependencies generated for this target.
include src/supervisors/simpleml/CMakeFiles/simpleml.dir/depend.make

# Include the progress variables for this target.
include src/supervisors/simpleml/CMakeFiles/simpleml.dir/progress.make

# Include the compile flags for this target's objects.
include src/supervisors/simpleml/CMakeFiles/simpleml.dir/flags.make

src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.o: src/supervisors/simpleml/CMakeFiles/simpleml.dir/flags.make
src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.o: ../../src/supervisors/simpleml/simpleml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frederic/dev/trading/siis-rev/strategies/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.o"
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml && /usr/bin/clang++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simpleml.dir/simpleml.cpp.o -c /home/frederic/dev/trading/siis-rev/strategies/src/supervisors/simpleml/simpleml.cpp

src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpleml.dir/simpleml.cpp.i"
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml && /usr/bin/clang++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frederic/dev/trading/siis-rev/strategies/src/supervisors/simpleml/simpleml.cpp > CMakeFiles/simpleml.dir/simpleml.cpp.i

src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpleml.dir/simpleml.cpp.s"
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml && /usr/bin/clang++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frederic/dev/trading/siis-rev/strategies/src/supervisors/simpleml/simpleml.cpp -o CMakeFiles/simpleml.dir/simpleml.cpp.s

# Object files for target simpleml
simpleml_OBJECTS = \
"CMakeFiles/simpleml.dir/simpleml.cpp.o"

# External object files for target simpleml
simpleml_EXTERNAL_OBJECTS =

supervisors/libsimpleml.so: src/supervisors/simpleml/CMakeFiles/simpleml.dir/simpleml.cpp.o
supervisors/libsimpleml.so: src/supervisors/simpleml/CMakeFiles/simpleml.dir/build.make
supervisors/libsimpleml.so: lib/libsiis.so
supervisors/libsimpleml.so: /home/frederic/dev/amd64/lib/libta_lib.so
supervisors/libsimpleml.so: /home/frederic/dev/amd64/lib/libobjective3d-dbg.so
supervisors/libsimpleml.so: /home/frederic/dev/amd64/lib/libta_lib.so
supervisors/libsimpleml.so: src/supervisors/simpleml/CMakeFiles/simpleml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/frederic/dev/trading/siis-rev/strategies/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../supervisors/libsimpleml.so"
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpleml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/supervisors/simpleml/CMakeFiles/simpleml.dir/build: supervisors/libsimpleml.so

.PHONY : src/supervisors/simpleml/CMakeFiles/simpleml.dir/build

src/supervisors/simpleml/CMakeFiles/simpleml.dir/clean:
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml && $(CMAKE_COMMAND) -P CMakeFiles/simpleml.dir/cmake_clean.cmake
.PHONY : src/supervisors/simpleml/CMakeFiles/simpleml.dir/clean

src/supervisors/simpleml/CMakeFiles/simpleml.dir/depend:
	cd /home/frederic/dev/trading/siis-rev/strategies/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frederic/dev/trading/siis-rev/strategies /home/frederic/dev/trading/siis-rev/strategies/src/supervisors/simpleml /home/frederic/dev/trading/siis-rev/strategies/build/debug /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml /home/frederic/dev/trading/siis-rev/strategies/build/debug/src/supervisors/simpleml/CMakeFiles/simpleml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/supervisors/simpleml/CMakeFiles/simpleml.dir/depend
