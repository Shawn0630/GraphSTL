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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shawn/Files/Project/GraphSTL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shawn/Files/Project/GraphSTL/build

# Include any dependencies generated for this target.
include libbar/CMakeFiles/libbar.dir/depend.make

# Include the progress variables for this target.
include libbar/CMakeFiles/libbar.dir/progress.make

# Include the compile flags for this target's objects.
include libbar/CMakeFiles/libbar.dir/flags.make

libbar/CMakeFiles/libbar.dir/bar.cpp.o: libbar/CMakeFiles/libbar.dir/flags.make
libbar/CMakeFiles/libbar.dir/bar.cpp.o: ../libbar/bar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libbar/CMakeFiles/libbar.dir/bar.cpp.o"
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && /usr/local/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libbar.dir/bar.cpp.o -c /Users/shawn/Files/Project/GraphSTL/libbar/bar.cpp

libbar/CMakeFiles/libbar.dir/bar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libbar.dir/bar.cpp.i"
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shawn/Files/Project/GraphSTL/libbar/bar.cpp > CMakeFiles/libbar.dir/bar.cpp.i

libbar/CMakeFiles/libbar.dir/bar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libbar.dir/bar.cpp.s"
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && /usr/local/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shawn/Files/Project/GraphSTL/libbar/bar.cpp -o CMakeFiles/libbar.dir/bar.cpp.s

libbar/CMakeFiles/libbar.dir/bar.cpp.o.requires:

.PHONY : libbar/CMakeFiles/libbar.dir/bar.cpp.o.requires

libbar/CMakeFiles/libbar.dir/bar.cpp.o.provides: libbar/CMakeFiles/libbar.dir/bar.cpp.o.requires
	$(MAKE) -f libbar/CMakeFiles/libbar.dir/build.make libbar/CMakeFiles/libbar.dir/bar.cpp.o.provides.build
.PHONY : libbar/CMakeFiles/libbar.dir/bar.cpp.o.provides

libbar/CMakeFiles/libbar.dir/bar.cpp.o.provides.build: libbar/CMakeFiles/libbar.dir/bar.cpp.o


# Object files for target libbar
libbar_OBJECTS = \
"CMakeFiles/libbar.dir/bar.cpp.o"

# External object files for target libbar
libbar_EXTERNAL_OBJECTS =

libbar/liblibbar.a: libbar/CMakeFiles/libbar.dir/bar.cpp.o
libbar/liblibbar.a: libbar/CMakeFiles/libbar.dir/build.make
libbar/liblibbar.a: libbar/CMakeFiles/libbar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibbar.a"
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && $(CMAKE_COMMAND) -P CMakeFiles/libbar.dir/cmake_clean_target.cmake
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libbar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libbar/CMakeFiles/libbar.dir/build: libbar/liblibbar.a

.PHONY : libbar/CMakeFiles/libbar.dir/build

libbar/CMakeFiles/libbar.dir/requires: libbar/CMakeFiles/libbar.dir/bar.cpp.o.requires

.PHONY : libbar/CMakeFiles/libbar.dir/requires

libbar/CMakeFiles/libbar.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/build/libbar && $(CMAKE_COMMAND) -P CMakeFiles/libbar.dir/cmake_clean.cmake
.PHONY : libbar/CMakeFiles/libbar.dir/clean

libbar/CMakeFiles/libbar.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/libbar /Users/shawn/Files/Project/GraphSTL/build /Users/shawn/Files/Project/GraphSTL/build/libbar /Users/shawn/Files/Project/GraphSTL/build/libbar/CMakeFiles/libbar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libbar/CMakeFiles/libbar.dir/depend

