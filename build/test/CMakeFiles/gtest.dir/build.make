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

# Utility rule file for gtest.

# Include the progress variables for this target.
include test/CMakeFiles/gtest.dir/progress.make

test/CMakeFiles/gtest: test/CMakeFiles/gtest-complete


test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-install
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-mkdir
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-download
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-update
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-patch
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-configure
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-build
test/CMakeFiles/gtest-complete: test/gtest/src/gtest-stamp/gtest-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/CMakeFiles
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/CMakeFiles/gtest-complete
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-done

test/gtest/src/gtest-stamp/gtest-install: test/gtest/src/gtest-stamp/gtest-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E echo_append
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-install

test/gtest/src/gtest-stamp/gtest-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest/tmp
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E make_directory /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-mkdir

test/gtest/src/gtest-stamp/gtest-download: test/gtest/src/gtest-stamp/gtest-urlinfo.txt
test/gtest/src/gtest-stamp/gtest-download: test/gtest/src/gtest-stamp/gtest-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src && /usr/local/Cellar/cmake/3.10.0/bin/cmake -P /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/download-gtest.cmake
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src && /usr/local/Cellar/cmake/3.10.0/bin/cmake -P /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/verify-gtest.cmake
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src && /usr/local/Cellar/cmake/3.10.0/bin/cmake -P /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/extract-gtest.cmake
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-download

test/gtest/src/gtest-stamp/gtest-update: test/gtest/src/gtest-stamp/gtest-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E echo_append
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-update

test/gtest/src/gtest-stamp/gtest-patch: test/gtest/src/gtest-stamp/gtest-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E echo_append
	cd /Users/shawn/Files/Project/GraphSTL/build/test && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-patch

test/gtest/src/gtest-stamp/gtest-configure: test/gtest/tmp/gtest-cfgcmd.txt
test/gtest/src/gtest-stamp/gtest-configure: test/gtest/src/gtest-stamp/gtest-update
test/gtest/src/gtest-stamp/gtest-configure: test/gtest/src/gtest-stamp/gtest-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && /usr/local/Cellar/cmake/3.10.0/bin/cmake "-GUnix Makefiles" /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-configure

test/gtest/src/gtest-stamp/gtest-build: test/gtest/src/gtest-stamp/gtest-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/shawn/Files/Project/GraphSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'gtest'"
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && $(MAKE)
	cd /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-build && /usr/local/Cellar/cmake/3.10.0/bin/cmake -E touch /Users/shawn/Files/Project/GraphSTL/build/test/gtest/src/gtest-stamp/gtest-build

gtest: test/CMakeFiles/gtest
gtest: test/CMakeFiles/gtest-complete
gtest: test/gtest/src/gtest-stamp/gtest-install
gtest: test/gtest/src/gtest-stamp/gtest-mkdir
gtest: test/gtest/src/gtest-stamp/gtest-download
gtest: test/gtest/src/gtest-stamp/gtest-update
gtest: test/gtest/src/gtest-stamp/gtest-patch
gtest: test/gtest/src/gtest-stamp/gtest-configure
gtest: test/gtest/src/gtest-stamp/gtest-build
gtest: test/CMakeFiles/gtest.dir/build.make

.PHONY : gtest

# Rule to build all files generated by this target.
test/CMakeFiles/gtest.dir/build: gtest

.PHONY : test/CMakeFiles/gtest.dir/build

test/CMakeFiles/gtest.dir/clean:
	cd /Users/shawn/Files/Project/GraphSTL/build/test && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/gtest.dir/clean

test/CMakeFiles/gtest.dir/depend:
	cd /Users/shawn/Files/Project/GraphSTL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawn/Files/Project/GraphSTL /Users/shawn/Files/Project/GraphSTL/test /Users/shawn/Files/Project/GraphSTL/build /Users/shawn/Files/Project/GraphSTL/build/test /Users/shawn/Files/Project/GraphSTL/build/test/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/gtest.dir/depend

