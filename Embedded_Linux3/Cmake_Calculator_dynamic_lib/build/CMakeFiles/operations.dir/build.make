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
CMAKE_SOURCE_DIR = /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build

# Include any dependencies generated for this target.
include CMakeFiles/operations.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/operations.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/operations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/operations.dir/flags.make

CMakeFiles/operations.dir/Lib/add.c.o: CMakeFiles/operations.dir/flags.make
CMakeFiles/operations.dir/Lib/add.c.o: ../Lib/add.c
CMakeFiles/operations.dir/Lib/add.c.o: CMakeFiles/operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/operations.dir/Lib/add.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/operations.dir/Lib/add.c.o -MF CMakeFiles/operations.dir/Lib/add.c.o.d -o CMakeFiles/operations.dir/Lib/add.c.o -c /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/add.c

CMakeFiles/operations.dir/Lib/add.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/operations.dir/Lib/add.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/add.c > CMakeFiles/operations.dir/Lib/add.c.i

CMakeFiles/operations.dir/Lib/add.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/operations.dir/Lib/add.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/add.c -o CMakeFiles/operations.dir/Lib/add.c.s

CMakeFiles/operations.dir/Lib/divide.c.o: CMakeFiles/operations.dir/flags.make
CMakeFiles/operations.dir/Lib/divide.c.o: ../Lib/divide.c
CMakeFiles/operations.dir/Lib/divide.c.o: CMakeFiles/operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/operations.dir/Lib/divide.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/operations.dir/Lib/divide.c.o -MF CMakeFiles/operations.dir/Lib/divide.c.o.d -o CMakeFiles/operations.dir/Lib/divide.c.o -c /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/divide.c

CMakeFiles/operations.dir/Lib/divide.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/operations.dir/Lib/divide.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/divide.c > CMakeFiles/operations.dir/Lib/divide.c.i

CMakeFiles/operations.dir/Lib/divide.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/operations.dir/Lib/divide.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/divide.c -o CMakeFiles/operations.dir/Lib/divide.c.s

CMakeFiles/operations.dir/Lib/modulus.c.o: CMakeFiles/operations.dir/flags.make
CMakeFiles/operations.dir/Lib/modulus.c.o: ../Lib/modulus.c
CMakeFiles/operations.dir/Lib/modulus.c.o: CMakeFiles/operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/operations.dir/Lib/modulus.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/operations.dir/Lib/modulus.c.o -MF CMakeFiles/operations.dir/Lib/modulus.c.o.d -o CMakeFiles/operations.dir/Lib/modulus.c.o -c /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/modulus.c

CMakeFiles/operations.dir/Lib/modulus.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/operations.dir/Lib/modulus.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/modulus.c > CMakeFiles/operations.dir/Lib/modulus.c.i

CMakeFiles/operations.dir/Lib/modulus.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/operations.dir/Lib/modulus.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/modulus.c -o CMakeFiles/operations.dir/Lib/modulus.c.s

CMakeFiles/operations.dir/Lib/multiply.c.o: CMakeFiles/operations.dir/flags.make
CMakeFiles/operations.dir/Lib/multiply.c.o: ../Lib/multiply.c
CMakeFiles/operations.dir/Lib/multiply.c.o: CMakeFiles/operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/operations.dir/Lib/multiply.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/operations.dir/Lib/multiply.c.o -MF CMakeFiles/operations.dir/Lib/multiply.c.o.d -o CMakeFiles/operations.dir/Lib/multiply.c.o -c /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/multiply.c

CMakeFiles/operations.dir/Lib/multiply.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/operations.dir/Lib/multiply.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/multiply.c > CMakeFiles/operations.dir/Lib/multiply.c.i

CMakeFiles/operations.dir/Lib/multiply.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/operations.dir/Lib/multiply.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/multiply.c -o CMakeFiles/operations.dir/Lib/multiply.c.s

CMakeFiles/operations.dir/Lib/subtract.c.o: CMakeFiles/operations.dir/flags.make
CMakeFiles/operations.dir/Lib/subtract.c.o: ../Lib/subtract.c
CMakeFiles/operations.dir/Lib/subtract.c.o: CMakeFiles/operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/operations.dir/Lib/subtract.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/operations.dir/Lib/subtract.c.o -MF CMakeFiles/operations.dir/Lib/subtract.c.o.d -o CMakeFiles/operations.dir/Lib/subtract.c.o -c /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/subtract.c

CMakeFiles/operations.dir/Lib/subtract.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/operations.dir/Lib/subtract.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/subtract.c > CMakeFiles/operations.dir/Lib/subtract.c.i

CMakeFiles/operations.dir/Lib/subtract.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/operations.dir/Lib/subtract.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/Lib/subtract.c -o CMakeFiles/operations.dir/Lib/subtract.c.s

# Object files for target operations
operations_OBJECTS = \
"CMakeFiles/operations.dir/Lib/add.c.o" \
"CMakeFiles/operations.dir/Lib/divide.c.o" \
"CMakeFiles/operations.dir/Lib/modulus.c.o" \
"CMakeFiles/operations.dir/Lib/multiply.c.o" \
"CMakeFiles/operations.dir/Lib/subtract.c.o"

# External object files for target operations
operations_EXTERNAL_OBJECTS =

liboperations.so: CMakeFiles/operations.dir/Lib/add.c.o
liboperations.so: CMakeFiles/operations.dir/Lib/divide.c.o
liboperations.so: CMakeFiles/operations.dir/Lib/modulus.c.o
liboperations.so: CMakeFiles/operations.dir/Lib/multiply.c.o
liboperations.so: CMakeFiles/operations.dir/Lib/subtract.c.o
liboperations.so: CMakeFiles/operations.dir/build.make
liboperations.so: CMakeFiles/operations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C shared library liboperations.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/operations.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/operations.dir/build: liboperations.so
.PHONY : CMakeFiles/operations.dir/build

CMakeFiles/operations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/operations.dir/cmake_clean.cmake
.PHONY : CMakeFiles/operations.dir/clean

CMakeFiles/operations.dir/depend:
	cd /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build /home/nour/Nour/New/Embedded_Linux/Embedded_Linux3/Cmake_Calculator_dynamic_lib/build/CMakeFiles/operations.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/operations.dir/depend

