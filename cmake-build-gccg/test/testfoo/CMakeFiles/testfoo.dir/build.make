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
include test/testfoo/CMakeFiles/testfoo.dir/depend.make

# Include the progress variables for this target.
include test/testfoo/CMakeFiles/testfoo.dir/progress.make

# Include the compile flags for this target's objects.
include test/testfoo/CMakeFiles/testfoo.dir/flags.make

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o: test/testfoo/CMakeFiles/testfoo.dir/flags.make
test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o: ../test/testfoo/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testfoo.dir/main.cpp.o -c /Users/shawn/Files/Project/GraphSTL/test/testfoo/main.cpp

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testfoo.dir/main.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/test/testfoo/main.cpp > CMakeFiles/testfoo.dir/main.cpp.i

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testfoo.dir/main.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/test/testfoo/main.cpp -o CMakeFiles/testfoo.dir/main.cpp.s

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.requires:

.PHONY : test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.requires

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.provides: test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.requires
	$(MAKE) -f test/testfoo/CMakeFiles/testfoo.dir/build.make test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.provides.build
.PHONY : test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.provides

test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.provides.build: test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o


test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o: test/testfoo/CMakeFiles/testfoo.dir/flags.make
test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o: ../test/testfoo/testfoo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testfoo.dir/testfoo.cpp.o -c /Users/shawn/Files/Project/GraphSTL/test/testfoo/testfoo.cpp

test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testfoo.dir/testfoo.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/test/testfoo/testfoo.cpp > CMakeFiles/testfoo.dir/testfoo.cpp.i

test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testfoo.dir/testfoo.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/test/testfoo/testfoo.cpp -o CMakeFiles/testfoo.dir/testfoo.cpp.s

test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.requires:

.PHONY : test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.requires

test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.provides: test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.requires
	$(MAKE) -f test/testfoo/CMakeFiles/testfoo.dir/build.make test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.provides.build
.PHONY : test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.provides

test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.provides.build: test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o


# Object files for target testfoo
testfoo_OBJECTS = \
"CMakeFiles/testfoo.dir/main.cpp.o" \
"CMakeFiles/testfoo.dir/testfoo.cpp.o"

# External object files for target testfoo
testfoo_EXTERNAL_OBJECTS =

test/testfoo/testfoo: test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o
test/testfoo/testfoo: test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o
test/testfoo/testfoo: test/testfoo/CMakeFiles/testfoo.dir/build.make
test/testfoo/testfoo: libfoo/liblibfoo.a
test/testfoo/testfoo: test/gtest/src/gtest-build/googlemock/gtest/libgtest.a
test/testfoo/testfoo: test/gtest/src/gtest-build/googlemock/libgmock.a
test/testfoo/testfoo: test/testfoo/CMakeFiles/testfoo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable testfoo"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testfoo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/testfoo/CMakeFiles/testfoo.dir/build: test/testfoo/testfoo

.PHONY : test/testfoo/CMakeFiles/testfoo.dir/build

test/testfoo/CMakeFiles/testfoo.dir/requires: test/testfoo/CMakeFiles/testfoo.dir/main.cpp.o.requires
test/testfoo/CMakeFiles/testfoo.dir/requires: test/testfoo/CMakeFiles/testfoo.dir/testfoo.cpp.o.requires

.PHONY : test/testfoo/CMakeFiles/testfoo.dir/requires

test/testfoo/CMakeFiles/testfoo.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo && $(CMAKE_COMMAND) -P CMakeFiles/testfoo.dir/cmake_clean.cmake
.PHONY : test/testfoo/CMakeFiles/testfoo.dir/clean

test/testfoo/CMakeFiles/testfoo.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/test/testfoo /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/test/testfoo/CMakeFiles/testfoo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/testfoo/CMakeFiles/testfoo.dir/depend

