# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /home/alehmann/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/213.7172.20/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/alehmann/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/213.7172.20/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug

# Include any dependencies generated for this target.
include lib/Game/Nibbler/CMakeFiles/nibbler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/Game/Nibbler/CMakeFiles/nibbler.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/Game/Nibbler/CMakeFiles/nibbler.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Game/Nibbler/CMakeFiles/nibbler.dir/flags.make

lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o: lib/Game/Nibbler/CMakeFiles/nibbler.dir/flags.make
lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o: ../lib/Game/Nibbler/src/Nibbler.cpp
lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o: lib/Game/Nibbler/CMakeFiles/nibbler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o"
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o -MF CMakeFiles/nibbler.dir/src/Nibbler.cpp.o.d -o CMakeFiles/nibbler.dir/src/Nibbler.cpp.o -c /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/lib/Game/Nibbler/src/Nibbler.cpp

lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nibbler.dir/src/Nibbler.cpp.i"
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/lib/Game/Nibbler/src/Nibbler.cpp > CMakeFiles/nibbler.dir/src/Nibbler.cpp.i

lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nibbler.dir/src/Nibbler.cpp.s"
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/lib/Game/Nibbler/src/Nibbler.cpp -o CMakeFiles/nibbler.dir/src/Nibbler.cpp.s

# Object files for target nibbler
nibbler_OBJECTS = \
"CMakeFiles/nibbler.dir/src/Nibbler.cpp.o"

# External object files for target nibbler
nibbler_EXTERNAL_OBJECTS =

lib/Game/Nibbler/arcade_nibbler.so: lib/Game/Nibbler/CMakeFiles/nibbler.dir/src/Nibbler.cpp.o
lib/Game/Nibbler/arcade_nibbler.so: lib/Game/Nibbler/CMakeFiles/nibbler.dir/build.make
lib/Game/Nibbler/arcade_nibbler.so: lib/Game/Nibbler/CMakeFiles/nibbler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library arcade_nibbler.so"
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nibbler.dir/link.txt --verbose=$(VERBOSE)
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && cp arcade_nibbler.so /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/lib

# Rule to build all files generated by this target.
lib/Game/Nibbler/CMakeFiles/nibbler.dir/build: lib/Game/Nibbler/arcade_nibbler.so
.PHONY : lib/Game/Nibbler/CMakeFiles/nibbler.dir/build

lib/Game/Nibbler/CMakeFiles/nibbler.dir/clean:
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler && $(CMAKE_COMMAND) -P CMakeFiles/nibbler.dir/cmake_clean.cmake
.PHONY : lib/Game/Nibbler/CMakeFiles/nibbler.dir/clean

lib/Game/Nibbler/CMakeFiles/nibbler.dir/depend:
	cd /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/lib/Game/Nibbler /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler /home/alehmann/Epitech_2021_2022/Project/Semestre_4/B-OOP-400-LIL-4-1-arcade-thibault.campagne/cmake-build-debug/lib/Game/Nibbler/CMakeFiles/nibbler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Game/Nibbler/CMakeFiles/nibbler.dir/depend

