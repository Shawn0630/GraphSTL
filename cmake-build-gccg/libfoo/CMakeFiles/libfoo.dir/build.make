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
include libfoo/CMakeFiles/libfoo.dir/depend.make

# Include the progress variables for this target.
include libfoo/CMakeFiles/libfoo.dir/progress.make

# Include the compile flags for this target's objects.
include libfoo/CMakeFiles/libfoo.dir/flags.make

libfoo/CMakeFiles/libfoo.dir/foo.cpp.o: libfoo/CMakeFiles/libfoo.dir/flags.make
libfoo/CMakeFiles/libfoo.dir/foo.cpp.o: ../libfoo/foo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libfoo/CMakeFiles/libfoo.dir/foo.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && /usr/local/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libfoo.dir/foo.cpp.o -c /Users/shawn/Files/Project/GraphSTL/libfoo/foo.cpp

libfoo/CMakeFiles/libfoo.dir/foo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libfoo.dir/foo.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/libfoo/foo.cpp > CMakeFiles/libfoo.dir/foo.cpp.i

libfoo/CMakeFiles/libfoo.dir/foo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libfoo.dir/foo.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/libfoo/foo.cpp -o CMakeFiles/libfoo.dir/foo.cpp.s

libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.requires:

.PHONY : libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.requires

libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.provides: libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.requires
	$(MAKE) -f libfoo/CMakeFiles/libfoo.dir/build.make libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.provides.build
.PHONY : libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.provides

libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.provides.build: libfoo/CMakeFiles/libfoo.dir/foo.cpp.o


# Object files for target libfoo
libfoo_OBJECTS = \
"CMakeFiles/libfoo.dir/foo.cpp.o"

# External object files for target libfoo
libfoo_EXTERNAL_OBJECTS =

libfoo/liblibfoo.a: libfoo/CMakeFiles/libfoo.dir/foo.cpp.o
libfoo/liblibfoo.a: libfoo/CMakeFiles/libfoo.dir/build.make
libfoo/liblibfoo.a: libfoo/CMakeFiles/libfoo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibfoo.a"
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && $(CMAKE_COMMAND) -P CMakeFiles/libfoo.dir/cmake_clean_target.cmake
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libfoo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libfoo/CMakeFiles/libfoo.dir/build: libfoo/liblibfoo.a

.PHONY : libfoo/CMakeFiles/libfoo.dir/build

libfoo/CMakeFiles/libfoo.dir/requires: libfoo/CMakeFiles/libfoo.dir/foo.cpp.o.requires

.PHONY : libfoo/CMakeFiles/libfoo.dir/requires

libfoo/CMakeFiles/libfoo.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo && $(CMAKE_COMMAND) -P CMakeFiles/libfoo.dir/cmake_clean.cmake
.PHONY : libfoo/CMakeFiles/libfoo.dir/clean

libfoo/CMakeFiles/libfoo.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/libfoo /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo /Users/shawn/Files/Project/GraphSTL/cmake-build-gccg/libfoo/CMakeFiles/libfoo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libfoo/CMakeFiles/libfoo.dir/depend
