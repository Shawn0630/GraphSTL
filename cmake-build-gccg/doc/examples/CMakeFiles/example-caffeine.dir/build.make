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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shawn/Files/Project/GraphSTL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg

# Include any dependencies generated for this target.
include doc/examples/CMakeFiles/example-caffeine.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/example-caffeine.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/example-caffeine.dir/flags.make

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o: doc/examples/CMakeFiles/example-caffeine.dir/flags.make
doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o: ../doc/examples/caffeine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples && /usr/local/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example-caffeine.dir/caffeine.cpp.o -c /Users/shawn/Files/Project/GraphSTL/doc/examples/caffeine.cpp

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-caffeine.dir/caffeine.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/doc/examples/caffeine.cpp > CMakeFiles/example-caffeine.dir/caffeine.cpp.i

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-caffeine.dir/caffeine.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/doc/examples/caffeine.cpp -o CMakeFiles/example-caffeine.dir/caffeine.cpp.s

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.requires:

.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.requires

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.provides: doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.requires
	$(MAKE) -f doc/examples/CMakeFiles/example-caffeine.dir/build.make doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.provides.build
.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.provides

doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.provides.build: doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o


# Object files for target example-caffeine
example__caffeine_OBJECTS = \
"CMakeFiles/example-caffeine.dir/caffeine.cpp.o"

# External object files for target example-caffeine
example__caffeine_EXTERNAL_OBJECTS =

doc/examples/example-caffeine: doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o
doc/examples/example-caffeine: doc/examples/CMakeFiles/example-caffeine.dir/build.make
doc/examples/example-caffeine: doc/examples/CMakeFiles/example-caffeine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-caffeine"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-caffeine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/example-caffeine.dir/build: doc/examples/example-caffeine

.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/build

doc/examples/CMakeFiles/example-caffeine.dir/requires: doc/examples/CMakeFiles/example-caffeine.dir/caffeine.cpp.o.requires

.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/requires

doc/examples/CMakeFiles/example-caffeine.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/example-caffeine.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/clean

doc/examples/CMakeFiles/example-caffeine.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/doc/examples /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/doc/examples/CMakeFiles/example-caffeine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/example-caffeine.dir/depend

