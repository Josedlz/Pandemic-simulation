# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\ACER\Documents\Pandemic-simulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/simulator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simulator.dir/flags.make

CMakeFiles/simulator.dir/main.cpp.obj: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/main.cpp.obj: CMakeFiles/simulator.dir/includes_CXX.rsp
CMakeFiles/simulator.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simulator.dir/main.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\simulator.dir\main.cpp.obj -c C:\Users\ACER\Documents\Pandemic-simulation\main.cpp

CMakeFiles/simulator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/main.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ACER\Documents\Pandemic-simulation\main.cpp > CMakeFiles\simulator.dir\main.cpp.i

CMakeFiles/simulator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/main.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ACER\Documents\Pandemic-simulation\main.cpp -o CMakeFiles\simulator.dir\main.cpp.s

CMakeFiles/simulator.dir/point.cpp.obj: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/point.cpp.obj: CMakeFiles/simulator.dir/includes_CXX.rsp
CMakeFiles/simulator.dir/point.cpp.obj: ../point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simulator.dir/point.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\simulator.dir\point.cpp.obj -c C:\Users\ACER\Documents\Pandemic-simulation\point.cpp

CMakeFiles/simulator.dir/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/point.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ACER\Documents\Pandemic-simulation\point.cpp > CMakeFiles\simulator.dir\point.cpp.i

CMakeFiles/simulator.dir/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/point.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ACER\Documents\Pandemic-simulation\point.cpp -o CMakeFiles\simulator.dir\point.cpp.s

CMakeFiles/simulator.dir/pandemic.cpp.obj: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/pandemic.cpp.obj: CMakeFiles/simulator.dir/includes_CXX.rsp
CMakeFiles/simulator.dir/pandemic.cpp.obj: ../pandemic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simulator.dir/pandemic.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\simulator.dir\pandemic.cpp.obj -c C:\Users\ACER\Documents\Pandemic-simulation\pandemic.cpp

CMakeFiles/simulator.dir/pandemic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/pandemic.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ACER\Documents\Pandemic-simulation\pandemic.cpp > CMakeFiles\simulator.dir\pandemic.cpp.i

CMakeFiles/simulator.dir/pandemic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/pandemic.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ACER\Documents\Pandemic-simulation\pandemic.cpp -o CMakeFiles\simulator.dir\pandemic.cpp.s

CMakeFiles/simulator.dir/wall.cpp.obj: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/wall.cpp.obj: CMakeFiles/simulator.dir/includes_CXX.rsp
CMakeFiles/simulator.dir/wall.cpp.obj: ../wall.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/simulator.dir/wall.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\simulator.dir\wall.cpp.obj -c C:\Users\ACER\Documents\Pandemic-simulation\wall.cpp

CMakeFiles/simulator.dir/wall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/wall.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ACER\Documents\Pandemic-simulation\wall.cpp > CMakeFiles\simulator.dir\wall.cpp.i

CMakeFiles/simulator.dir/wall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/wall.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ACER\Documents\Pandemic-simulation\wall.cpp -o CMakeFiles\simulator.dir\wall.cpp.s

CMakeFiles/simulator.dir/event.cpp.obj: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/event.cpp.obj: CMakeFiles/simulator.dir/includes_CXX.rsp
CMakeFiles/simulator.dir/event.cpp.obj: ../event.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/simulator.dir/event.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\simulator.dir\event.cpp.obj -c C:\Users\ACER\Documents\Pandemic-simulation\event.cpp

CMakeFiles/simulator.dir/event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/event.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ACER\Documents\Pandemic-simulation\event.cpp > CMakeFiles\simulator.dir\event.cpp.i

CMakeFiles/simulator.dir/event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/event.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ACER\Documents\Pandemic-simulation\event.cpp -o CMakeFiles\simulator.dir\event.cpp.s

# Object files for target simulator
simulator_OBJECTS = \
"CMakeFiles/simulator.dir/main.cpp.obj" \
"CMakeFiles/simulator.dir/point.cpp.obj" \
"CMakeFiles/simulator.dir/pandemic.cpp.obj" \
"CMakeFiles/simulator.dir/wall.cpp.obj" \
"CMakeFiles/simulator.dir/event.cpp.obj"

# External object files for target simulator
simulator_EXTERNAL_OBJECTS =

simulator.exe: CMakeFiles/simulator.dir/main.cpp.obj
simulator.exe: CMakeFiles/simulator.dir/point.cpp.obj
simulator.exe: CMakeFiles/simulator.dir/pandemic.cpp.obj
simulator.exe: CMakeFiles/simulator.dir/wall.cpp.obj
simulator.exe: CMakeFiles/simulator.dir/event.cpp.obj
simulator.exe: CMakeFiles/simulator.dir/build.make
simulator.exe: C:/mingw32/lib/libsfml-graphics-d.a
simulator.exe: C:/mingw32/lib/libsfml-window-d.a
simulator.exe: C:/mingw32/lib/libsfml-system-d.a
simulator.exe: CMakeFiles/simulator.dir/linklibs.rsp
simulator.exe: CMakeFiles/simulator.dir/objects1.rsp
simulator.exe: CMakeFiles/simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable simulator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\simulator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simulator.dir/build: simulator.exe

.PHONY : CMakeFiles/simulator.dir/build

CMakeFiles/simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\simulator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/simulator.dir/clean

CMakeFiles/simulator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\ACER\Documents\Pandemic-simulation C:\Users\ACER\Documents\Pandemic-simulation C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug C:\Users\ACER\Documents\Pandemic-simulation\cmake-build-debug\CMakeFiles\simulator.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simulator.dir/depend

