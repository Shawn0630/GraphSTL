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
CMAKE_BINARY_DIR = /Users/shawn/Files/Project/GraphSTL/cmake-build-debug

# Include any dependencies generated for this target.
include test/testconstructor/CMakeFiles/testconstructor.dir/depend.make

# Include the progress variables for this target.
include test/testconstructor/CMakeFiles/testconstructor.dir/progress.make

# Include the compile flags for this target's objects.
include test/testconstructor/CMakeFiles/testconstructor.dir/flags.make

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o: test/testconstructor/CMakeFiles/testconstructor.dir/flags.make
test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o: ../test/testconstructor/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testconstructor.dir/main.cpp.o -c /Users/shawn/Files/Project/GraphSTL/test/testconstructor/main.cpp

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testconstructor.dir/main.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/test/testconstructor/main.cpp > CMakeFiles/testconstructor.dir/main.cpp.i

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testconstructor.dir/main.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/test/testconstructor/main.cpp -o CMakeFiles/testconstructor.dir/main.cpp.s

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.requires:

.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.requires

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.provides: test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.requires
	$(MAKE) -f test/testconstructor/CMakeFiles/testconstructor.dir/build.make test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.provides.build
.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.provides

test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.provides.build: test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o


test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o: test/testconstructor/CMakeFiles/testconstructor.dir/flags.make
test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o: ../test/testconstructor/testconstructor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testconstructor.dir/testconstructor.cpp.o -c /Users/shawn/Files/Project/GraphSTL/test/testconstructor/testconstructor.cpp

test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testconstructor.dir/testconstructor.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/test/testconstructor/testconstructor.cpp > CMakeFiles/testconstructor.dir/testconstructor.cpp.i

test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testconstructor.dir/testconstructor.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/test/testconstructor/testconstructor.cpp -o CMakeFiles/testconstructor.dir/testconstructor.cpp.s

test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.requires:

.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.requires

test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.provides: test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.requires
	$(MAKE) -f test/testconstructor/CMakeFiles/testconstructor.dir/build.make test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.provides.build
.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.provides

test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.provides.build: test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o


# Object files for target testconstructor
testconstructor_OBJECTS = \
"CMakeFiles/testconstructor.dir/main.cpp.o" \
"CMakeFiles/testconstructor.dir/testconstructor.cpp.o"

# External object files for target testconstructor
testconstructor_EXTERNAL_OBJECTS =

test/testconstructor/testconstructor: test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o
test/testconstructor/testconstructor: test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o
test/testconstructor/testconstructor: test/testconstructor/CMakeFiles/testconstructor.dir/build.make
test/testconstructor/testconstructor: test/gtest/src/gtest-build/googlemock/gtest/libgtest.a
test/testconstructor/testconstructor: test/gtest/src/gtest-build/googlemock/libgmock.a
test/testconstructor/testconstructor: test/testconstructor/CMakeFiles/testconstructor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable testconstructor"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testconstructor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/testconstructor/CMakeFiles/testconstructor.dir/build: test/testconstructor/testconstructor

.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/build

test/testconstructor/CMakeFiles/testconstructor.dir/requires: test/testconstructor/CMakeFiles/testconstructor.dir/main.cpp.o.requires
test/testconstructor/CMakeFiles/testconstructor.dir/requires: test/testconstructor/CMakeFiles/testconstructor.dir/testconstructor.cpp.o.requires

.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/requires

test/testconstructor/CMakeFiles/testconstructor.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor && $(CMAKE_COMMAND) -P CMakeFiles/testconstructor.dir/cmake_clean.cmake
.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/clean

test/testconstructor/CMakeFiles/testconstructor.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/test/testconstructor /Users/shawn/Files/Project/GraphSTL/cmake-build-debug /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor /Users/shawn/Files/Project/GraphSTL/cmake-build-debug/test/testconstructor/CMakeFiles/testconstructor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/testconstructor/CMakeFiles/testconstructor.dir/depend

