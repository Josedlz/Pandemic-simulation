# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/jose/CLionProjects/simulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jose/CLionProjects/simulator/build

# Include any dependencies generated for this target.
include CMakeFiles/simulator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simulator.dir/flags.make

CMakeFiles/simulator.dir/main.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simulator.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/main.cpp.o -c /home/jose/CLionProjects/simulator/main.cpp

CMakeFiles/simulator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/main.cpp > CMakeFiles/simulator.dir/main.cpp.i

CMakeFiles/simulator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/main.cpp -o CMakeFiles/simulator.dir/main.cpp.s

CMakeFiles/simulator.dir/point.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/point.cpp.o: ../point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simulator.dir/point.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/point.cpp.o -c /home/jose/CLionProjects/simulator/point.cpp

CMakeFiles/simulator.dir/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/point.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/point.cpp > CMakeFiles/simulator.dir/point.cpp.i

CMakeFiles/simulator.dir/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/point.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/point.cpp -o CMakeFiles/simulator.dir/point.cpp.s

CMakeFiles/simulator.dir/pandemic.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/pandemic.cpp.o: ../pandemic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simulator.dir/pandemic.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/pandemic.cpp.o -c /home/jose/CLionProjects/simulator/pandemic.cpp

CMakeFiles/simulator.dir/pandemic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/pandemic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/pandemic.cpp > CMakeFiles/simulator.dir/pandemic.cpp.i

CMakeFiles/simulator.dir/pandemic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/pandemic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/pandemic.cpp -o CMakeFiles/simulator.dir/pandemic.cpp.s

CMakeFiles/simulator.dir/wall.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/wall.cpp.o: ../wall.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/simulator.dir/wall.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/wall.cpp.o -c /home/jose/CLionProjects/simulator/wall.cpp

CMakeFiles/simulator.dir/wall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/wall.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/wall.cpp > CMakeFiles/simulator.dir/wall.cpp.i

CMakeFiles/simulator.dir/wall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/wall.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/wall.cpp -o CMakeFiles/simulator.dir/wall.cpp.s

CMakeFiles/simulator.dir/event.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/event.cpp.o: ../event.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/simulator.dir/event.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/event.cpp.o -c /home/jose/CLionProjects/simulator/event.cpp

CMakeFiles/simulator.dir/event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/event.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/event.cpp > CMakeFiles/simulator.dir/event.cpp.i

CMakeFiles/simulator.dir/event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/event.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/event.cpp -o CMakeFiles/simulator.dir/event.cpp.s

# Object files for target simulator
simulator_OBJECTS = \
"CMakeFiles/simulator.dir/main.cpp.o" \
"CMakeFiles/simulator.dir/point.cpp.o" \
"CMakeFiles/simulator.dir/pandemic.cpp.o" \
"CMakeFiles/simulator.dir/wall.cpp.o" \
"CMakeFiles/simulator.dir/event.cpp.o"

# External object files for target simulator
simulator_EXTERNAL_OBJECTS =

simulator: CMakeFiles/simulator.dir/main.cpp.o
simulator: CMakeFiles/simulator.dir/point.cpp.o
simulator: CMakeFiles/simulator.dir/pandemic.cpp.o
simulator: CMakeFiles/simulator.dir/wall.cpp.o
simulator: CMakeFiles/simulator.dir/event.cpp.o
simulator: CMakeFiles/simulator.dir/build.make
simulator: /home/jose/DevLibraries/SFML-2.5.1/lib/libsfml-graphics.so.2.5.1
simulator: /home/jose/DevLibraries/SFML-2.5.1/lib/libsfml-window.so.2.5.1
simulator: /home/jose/DevLibraries/SFML-2.5.1/lib/libsfml-system.so.2.5.1
simulator: CMakeFiles/simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jose/CLionProjects/simulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable simulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simulator.dir/build: simulator

.PHONY : CMakeFiles/simulator.dir/build

CMakeFiles/simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simulator.dir/clean

CMakeFiles/simulator.dir/depend:
	cd /home/jose/CLionProjects/simulator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jose/CLionProjects/simulator /home/jose/CLionProjects/simulator /home/jose/CLionProjects/simulator/build /home/jose/CLionProjects/simulator/build /home/jose/CLionProjects/simulator/build/CMakeFiles/simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simulator.dir/depend

