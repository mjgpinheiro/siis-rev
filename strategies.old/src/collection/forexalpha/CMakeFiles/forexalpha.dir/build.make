# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/romain/dev/siis-rev/strategies

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/romain/dev/siis-rev/strategies

# Include any dependencies generated for this target.
include src/collection/forexalpha/CMakeFiles/forexalpha.dir/depend.make

# Include the progress variables for this target.
include src/collection/forexalpha/CMakeFiles/forexalpha.dir/progress.make

# Include the compile flags for this target's objects.
include src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o: src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make
src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o: src/collection/forexalpha/forexalpha.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forexalpha.dir/forexalpha.cpp.o -c /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/forexalpha.cpp

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forexalpha.dir/forexalpha.cpp.i"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/forexalpha.cpp > CMakeFiles/forexalpha.dir/forexalpha.cpp.i

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forexalpha.dir/forexalpha.cpp.s"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/forexalpha.cpp -o CMakeFiles/forexalpha.dir/forexalpha.cpp.s

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.requires:

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.provides: src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.requires
	$(MAKE) -f src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.provides.build
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.provides

src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.provides.build: src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o


src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o: src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make
src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o: src/collection/forexalpha/faaanalyser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forexalpha.dir/faaanalyser.cpp.o -c /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/faaanalyser.cpp

src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forexalpha.dir/faaanalyser.cpp.i"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/faaanalyser.cpp > CMakeFiles/forexalpha.dir/faaanalyser.cpp.i

src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forexalpha.dir/faaanalyser.cpp.s"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/faaanalyser.cpp -o CMakeFiles/forexalpha.dir/faaanalyser.cpp.s

src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.requires:

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.provides: src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.requires
	$(MAKE) -f src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.provides.build
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.provides

src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.provides.build: src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o


src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o: src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make
src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o: src/collection/forexalpha/fabanalyser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forexalpha.dir/fabanalyser.cpp.o -c /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fabanalyser.cpp

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forexalpha.dir/fabanalyser.cpp.i"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fabanalyser.cpp > CMakeFiles/forexalpha.dir/fabanalyser.cpp.i

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forexalpha.dir/fabanalyser.cpp.s"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fabanalyser.cpp -o CMakeFiles/forexalpha.dir/fabanalyser.cpp.s

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.requires:

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.provides: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.requires
	$(MAKE) -f src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.provides.build
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.provides

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.provides.build: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o


src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o: src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make
src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o: src/collection/forexalpha/facanalyser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forexalpha.dir/facanalyser.cpp.o -c /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/facanalyser.cpp

src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forexalpha.dir/facanalyser.cpp.i"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/facanalyser.cpp > CMakeFiles/forexalpha.dir/facanalyser.cpp.i

src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forexalpha.dir/facanalyser.cpp.s"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/facanalyser.cpp -o CMakeFiles/forexalpha.dir/facanalyser.cpp.s

src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.requires:

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.provides: src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.requires
	$(MAKE) -f src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.provides.build
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.provides

src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.provides.build: src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o


src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o: src/collection/forexalpha/CMakeFiles/forexalpha.dir/flags.make
src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o: src/collection/forexalpha/fadanalyser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forexalpha.dir/fadanalyser.cpp.o -c /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fadanalyser.cpp

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forexalpha.dir/fadanalyser.cpp.i"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fadanalyser.cpp > CMakeFiles/forexalpha.dir/fadanalyser.cpp.i

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forexalpha.dir/fadanalyser.cpp.s"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/fadanalyser.cpp -o CMakeFiles/forexalpha.dir/fadanalyser.cpp.s

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.requires:

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.provides: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.requires
	$(MAKE) -f src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.provides.build
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.provides

src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.provides.build: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o


# Object files for target forexalpha
forexalpha_OBJECTS = \
"CMakeFiles/forexalpha.dir/forexalpha.cpp.o" \
"CMakeFiles/forexalpha.dir/faaanalyser.cpp.o" \
"CMakeFiles/forexalpha.dir/fabanalyser.cpp.o" \
"CMakeFiles/forexalpha.dir/facanalyser.cpp.o" \
"CMakeFiles/forexalpha.dir/fadanalyser.cpp.o"

# External object files for target forexalpha
forexalpha_EXTERNAL_OBJECTS =

collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/build.make
collection/libforexalpha.so: lib/libsiis.so
collection/libforexalpha.so: /home/romain/dev/amd64/lib/libta_lib.so
collection/libforexalpha.so: /home/romain/dev/amd64/lib/libobjective3d-dbg.so
collection/libforexalpha.so: /home/romain/dev/amd64/lib/libta_lib.so
collection/libforexalpha.so: src/collection/forexalpha/CMakeFiles/forexalpha.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/romain/dev/siis-rev/strategies/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ../../../collection/libforexalpha.so"
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/forexalpha.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/collection/forexalpha/CMakeFiles/forexalpha.dir/build: collection/libforexalpha.so

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/build

src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires: src/collection/forexalpha/CMakeFiles/forexalpha.dir/forexalpha.cpp.o.requires
src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires: src/collection/forexalpha/CMakeFiles/forexalpha.dir/faaanalyser.cpp.o.requires
src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fabanalyser.cpp.o.requires
src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires: src/collection/forexalpha/CMakeFiles/forexalpha.dir/facanalyser.cpp.o.requires
src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires: src/collection/forexalpha/CMakeFiles/forexalpha.dir/fadanalyser.cpp.o.requires

.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/requires

src/collection/forexalpha/CMakeFiles/forexalpha.dir/clean:
	cd /home/romain/dev/siis-rev/strategies/src/collection/forexalpha && $(CMAKE_COMMAND) -P CMakeFiles/forexalpha.dir/cmake_clean.cmake
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/clean

src/collection/forexalpha/CMakeFiles/forexalpha.dir/depend:
	cd /home/romain/dev/siis-rev/strategies && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/romain/dev/siis-rev/strategies /home/romain/dev/siis-rev/strategies/src/collection/forexalpha /home/romain/dev/siis-rev/strategies /home/romain/dev/siis-rev/strategies/src/collection/forexalpha /home/romain/dev/siis-rev/strategies/src/collection/forexalpha/CMakeFiles/forexalpha.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/collection/forexalpha/CMakeFiles/forexalpha.dir/depend

