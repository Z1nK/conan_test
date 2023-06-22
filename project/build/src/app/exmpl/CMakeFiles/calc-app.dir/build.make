# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lobesl/Codes/CODAC_projects/conan_test/project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lobesl/Codes/CODAC_projects/conan_test/project/build

# Include any dependencies generated for this target.
include src/app/exmpl/CMakeFiles/calc-app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/app/exmpl/CMakeFiles/calc-app.dir/compiler_depend.make

# Include the progress variables for this target.
include src/app/exmpl/CMakeFiles/calc-app.dir/progress.make

# Include the compile flags for this target's objects.
include src/app/exmpl/CMakeFiles/calc-app.dir/flags.make

src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o: src/app/exmpl/CMakeFiles/calc-app.dir/flags.make
src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o: ../src/app/exmpl/main.cpp
src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o: src/app/exmpl/CMakeFiles/calc-app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lobesl/Codes/CODAC_projects/conan_test/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o"
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o -MF CMakeFiles/calc-app.dir/main.cpp.o.d -o CMakeFiles/calc-app.dir/main.cpp.o -c /home/lobesl/Codes/CODAC_projects/conan_test/project/src/app/exmpl/main.cpp

src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc-app.dir/main.cpp.i"
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lobesl/Codes/CODAC_projects/conan_test/project/src/app/exmpl/main.cpp > CMakeFiles/calc-app.dir/main.cpp.i

src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc-app.dir/main.cpp.s"
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lobesl/Codes/CODAC_projects/conan_test/project/src/app/exmpl/main.cpp -o CMakeFiles/calc-app.dir/main.cpp.s

# Object files for target calc-app
calc__app_OBJECTS = \
"CMakeFiles/calc-app.dir/main.cpp.o"

# External object files for target calc-app
calc__app_EXTERNAL_OBJECTS =

bin/calc-app: src/app/exmpl/CMakeFiles/calc-app.dir/main.cpp.o
bin/calc-app: src/app/exmpl/CMakeFiles/calc-app.dir/build.make
bin/calc-app: lib/libcalculator.so.1.0.0
bin/calc-app: /home/lobesl/Codes/CODAC_projects/conan_test/dep_lib2/build/lib/libmultiplier.so.1.0.0
bin/calc-app: /home/lobesl/Codes/CODAC_projects/conan_test/dep_lib1/build/lib/libadder.so.1.0.0
bin/calc-app: src/app/exmpl/CMakeFiles/calc-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lobesl/Codes/CODAC_projects/conan_test/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/calc-app"
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calc-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/app/exmpl/CMakeFiles/calc-app.dir/build: bin/calc-app
.PHONY : src/app/exmpl/CMakeFiles/calc-app.dir/build

src/app/exmpl/CMakeFiles/calc-app.dir/clean:
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl && $(CMAKE_COMMAND) -P CMakeFiles/calc-app.dir/cmake_clean.cmake
.PHONY : src/app/exmpl/CMakeFiles/calc-app.dir/clean

src/app/exmpl/CMakeFiles/calc-app.dir/depend:
	cd /home/lobesl/Codes/CODAC_projects/conan_test/project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lobesl/Codes/CODAC_projects/conan_test/project /home/lobesl/Codes/CODAC_projects/conan_test/project/src/app/exmpl /home/lobesl/Codes/CODAC_projects/conan_test/project/build /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl /home/lobesl/Codes/CODAC_projects/conan_test/project/build/src/app/exmpl/CMakeFiles/calc-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/app/exmpl/CMakeFiles/calc-app.dir/depend
