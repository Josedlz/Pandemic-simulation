# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jose/CLionProjects/simulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jose/CLionProjects/simulator/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Pandemic-simulation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Pandemic-simulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Pandemic-simulation.dir/flags.make

CMakeFiles/Pandemic-simulation.dir/main.cpp.o: CMakeFiles/Pandemic-simulation.dir/flags.make
CMakeFiles/Pandemic-simulation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Pandemic-simulation.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pandemic-simulation.dir/main.cpp.o -c /home/jose/CLionProjects/simulator/main.cpp

CMakeFiles/Pandemic-simulation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pandemic-simulation.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/main.cpp > CMakeFiles/Pandemic-simulation.dir/main.cpp.i

CMakeFiles/Pandemic-simulation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pandemic-simulation.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/main.cpp -o CMakeFiles/Pandemic-simulation.dir/main.cpp.s

CMakeFiles/Pandemic-simulation.dir/event.cpp.o: CMakeFiles/Pandemic-simulation.dir/flags.make
CMakeFiles/Pandemic-simulation.dir/event.cpp.o: ../event.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Pandemic-simulation.dir/event.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pandemic-simulation.dir/event.cpp.o -c /home/jose/CLionProjects/simulator/event.cpp

CMakeFiles/Pandemic-simulation.dir/event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pandemic-simulation.dir/event.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/event.cpp > CMakeFiles/Pandemic-simulation.dir/event.cpp.i

CMakeFiles/Pandemic-simulation.dir/event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pandemic-simulation.dir/event.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/event.cpp -o CMakeFiles/Pandemic-simulation.dir/event.cpp.s

CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o: CMakeFiles/Pandemic-simulation.dir/flags.make
CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o: ../pandemic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o -c /home/jose/CLionProjects/simulator/pandemic.cpp

CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/pandemic.cpp > CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.i

CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/pandemic.cpp -o CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.s

CMakeFiles/Pandemic-simulation.dir/point.cpp.o: CMakeFiles/Pandemic-simulation.dir/flags.make
CMakeFiles/Pandemic-simulation.dir/point.cpp.o: ../point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Pandemic-simulation.dir/point.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pandemic-simulation.dir/point.cpp.o -c /home/jose/CLionProjects/simulator/point.cpp

CMakeFiles/Pandemic-simulation.dir/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pandemic-simulation.dir/point.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/point.cpp > CMakeFiles/Pandemic-simulation.dir/point.cpp.i

CMakeFiles/Pandemic-simulation.dir/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pandemic-simulation.dir/point.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/point.cpp -o CMakeFiles/Pandemic-simulation.dir/point.cpp.s

CMakeFiles/Pandemic-simulation.dir/wall.cpp.o: CMakeFiles/Pandemic-simulation.dir/flags.make
CMakeFiles/Pandemic-simulation.dir/wall.cpp.o: ../wall.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Pandemic-simulation.dir/wall.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Pandemic-simulation.dir/wall.cpp.o -c /home/jose/CLionProjects/simulator/wall.cpp

CMakeFiles/Pandemic-simulation.dir/wall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Pandemic-simulation.dir/wall.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jose/CLionProjects/simulator/wall.cpp > CMakeFiles/Pandemic-simulation.dir/wall.cpp.i

CMakeFiles/Pandemic-simulation.dir/wall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Pandemic-simulation.dir/wall.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jose/CLionProjects/simulator/wall.cpp -o CMakeFiles/Pandemic-simulation.dir/wall.cpp.s

# Object files for target Pandemic-simulation
Pandemic__simulation_OBJECTS = \
"CMakeFiles/Pandemic-simulation.dir/main.cpp.o" \
"CMakeFiles/Pandemic-simulation.dir/event.cpp.o" \
"CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o" \
"CMakeFiles/Pandemic-simulation.dir/point.cpp.o" \
"CMakeFiles/Pandemic-simulation.dir/wall.cpp.o"

# External object files for target Pandemic-simulation
Pandemic__simulation_EXTERNAL_OBJECTS =

Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/main.cpp.o
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/event.cpp.o
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/pandemic.cpp.o
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/point.cpp.o
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/wall.cpp.o
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/build.make
Pandemic-simulation: CMakeFiles/Pandemic-simulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Pandemic-simulation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Pandemic-simulation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Pandemic-simulation.dir/build: Pandemic-simulation

.PHONY : CMakeFiles/Pandemic-simulation.dir/build

CMakeFiles/Pandemic-simulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Pandemic-simulation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Pandemic-simulation.dir/clean

CMakeFiles/Pandemic-simulation.dir/depend:
	cd /home/jose/CLionProjects/simulator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jose/CLionProjects/simulator /home/jose/CLionProjects/simulator /home/jose/CLionProjects/simulator/cmake-build-debug /home/jose/CLionProjects/simulator/cmake-build-debug /home/jose/CLionProjects/simulator/cmake-build-debug/CMakeFiles/Pandemic-simulation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Pandemic-simulation.dir/depend
