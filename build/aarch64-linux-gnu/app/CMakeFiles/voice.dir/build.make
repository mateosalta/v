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
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mateo/voice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mateo/voice/build/aarch64-linux-gnu/app

# Include any dependencies generated for this target.
include CMakeFiles/voice.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/voice.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/voice.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/voice.dir/flags.make

app_Main_qml.cpp: ../../../app/Main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating app_Main_qml.cpp"
	/usr/lib/qt5/bin/qmlcachegen --resource=/home/mateo/voice/main.qrc /home/mateo/voice/app/Main.qml -o /home/mateo/voice/build/aarch64-linux-gnu/app/app_Main_qml.cpp

app_UCSComponents_RadialBottomEdge_qml.cpp: ../../../app/UCSComponents/RadialBottomEdge.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating app_UCSComponents_RadialBottomEdge_qml.cpp"
	/usr/lib/qt5/bin/qmlcachegen --resource=/home/mateo/voice/main.qrc /home/mateo/voice/app/UCSComponents/RadialBottomEdge.qml -o /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialBottomEdge_qml.cpp

app_UCSComponents_EmptyState_qml.cpp: ../../../app/UCSComponents/EmptyState.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating app_UCSComponents_EmptyState_qml.cpp"
	/usr/lib/qt5/bin/qmlcachegen --resource=/home/mateo/voice/main.qrc /home/mateo/voice/app/UCSComponents/EmptyState.qml -o /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_EmptyState_qml.cpp

app_UCSComponents_RadialAction_qml.cpp: ../../../app/UCSComponents/RadialAction.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating app_UCSComponents_RadialAction_qml.cpp"
	/usr/lib/qt5/bin/qmlcachegen --resource=/home/mateo/voice/main.qrc /home/mateo/voice/app/UCSComponents/RadialAction.qml -o /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialAction_qml.cpp

qmlcache_loader.cpp: ../../../main.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating qmlcache_loader.cpp"
	/usr/lib/qt5/bin/qmlcachegen --resource-file-mapping=main.qrc /home/mateo/voice/main.qrc -o /home/mateo/voice/build/aarch64-linux-gnu/app/qmlcache_loader.cpp

CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o: voice_autogen/mocs_compilation.cpp
CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o -MF CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/voice_autogen/mocs_compilation.cpp

CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/voice_autogen/mocs_compilation.cpp > CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.i

CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/voice_autogen/mocs_compilation.cpp -o CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.s

CMakeFiles/voice.dir/main.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/main.cpp.o: ../../../main.cpp
CMakeFiles/voice.dir/main.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/voice.dir/main.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/main.cpp.o -MF CMakeFiles/voice.dir/main.cpp.o.d -o CMakeFiles/voice.dir/main.cpp.o -c /home/mateo/voice/main.cpp

CMakeFiles/voice.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/main.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/main.cpp > CMakeFiles/voice.dir/main.cpp.i

CMakeFiles/voice.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/main.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/main.cpp -o CMakeFiles/voice.dir/main.cpp.s

CMakeFiles/voice.dir/app_Main_qml.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/app_Main_qml.cpp.o: app_Main_qml.cpp
CMakeFiles/voice.dir/app_Main_qml.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/voice.dir/app_Main_qml.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/app_Main_qml.cpp.o -MF CMakeFiles/voice.dir/app_Main_qml.cpp.o.d -o CMakeFiles/voice.dir/app_Main_qml.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/app_Main_qml.cpp

CMakeFiles/voice.dir/app_Main_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/app_Main_qml.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/app_Main_qml.cpp > CMakeFiles/voice.dir/app_Main_qml.cpp.i

CMakeFiles/voice.dir/app_Main_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/app_Main_qml.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/app_Main_qml.cpp -o CMakeFiles/voice.dir/app_Main_qml.cpp.s

CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o: app_UCSComponents_RadialBottomEdge_qml.cpp
CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o -MF CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o.d -o CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialBottomEdge_qml.cpp

CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialBottomEdge_qml.cpp > CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.i

CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialBottomEdge_qml.cpp -o CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.s

CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o: app_UCSComponents_EmptyState_qml.cpp
CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o -MF CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o.d -o CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_EmptyState_qml.cpp

CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_EmptyState_qml.cpp > CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.i

CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_EmptyState_qml.cpp -o CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.s

CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o: app_UCSComponents_RadialAction_qml.cpp
CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o -MF CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o.d -o CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialAction_qml.cpp

CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialAction_qml.cpp > CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.i

CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/app_UCSComponents_RadialAction_qml.cpp -o CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.s

CMakeFiles/voice.dir/qmlcache_loader.cpp.o: CMakeFiles/voice.dir/flags.make
CMakeFiles/voice.dir/qmlcache_loader.cpp.o: qmlcache_loader.cpp
CMakeFiles/voice.dir/qmlcache_loader.cpp.o: CMakeFiles/voice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/voice.dir/qmlcache_loader.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/voice.dir/qmlcache_loader.cpp.o -MF CMakeFiles/voice.dir/qmlcache_loader.cpp.o.d -o CMakeFiles/voice.dir/qmlcache_loader.cpp.o -c /home/mateo/voice/build/aarch64-linux-gnu/app/qmlcache_loader.cpp

CMakeFiles/voice.dir/qmlcache_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice.dir/qmlcache_loader.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mateo/voice/build/aarch64-linux-gnu/app/qmlcache_loader.cpp > CMakeFiles/voice.dir/qmlcache_loader.cpp.i

CMakeFiles/voice.dir/qmlcache_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice.dir/qmlcache_loader.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mateo/voice/build/aarch64-linux-gnu/app/qmlcache_loader.cpp -o CMakeFiles/voice.dir/qmlcache_loader.cpp.s

# Object files for target voice
voice_OBJECTS = \
"CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/voice.dir/main.cpp.o" \
"CMakeFiles/voice.dir/app_Main_qml.cpp.o" \
"CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o" \
"CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o" \
"CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o" \
"CMakeFiles/voice.dir/qmlcache_loader.cpp.o"

# External object files for target voice
voice_EXTERNAL_OBJECTS =

voice: CMakeFiles/voice.dir/voice_autogen/mocs_compilation.cpp.o
voice: CMakeFiles/voice.dir/main.cpp.o
voice: CMakeFiles/voice.dir/app_Main_qml.cpp.o
voice: CMakeFiles/voice.dir/app_UCSComponents_RadialBottomEdge_qml.cpp.o
voice: CMakeFiles/voice.dir/app_UCSComponents_EmptyState_qml.cpp.o
voice: CMakeFiles/voice.dir/app_UCSComponents_RadialAction_qml.cpp.o
voice: CMakeFiles/voice.dir/qmlcache_loader.cpp.o
voice: CMakeFiles/voice.dir/build.make
voice: /usr/lib/aarch64-linux-gnu/libQt5QuickControls2.so.5.12.8
voice: /usr/lib/aarch64-linux-gnu/libQt5Quick.so.5.12.8
voice: /usr/lib/aarch64-linux-gnu/libQt5Gui.so.5.12.8
voice: /usr/lib/aarch64-linux-gnu/libQt5Qml.so.5.12.8
voice: /usr/lib/aarch64-linux-gnu/libQt5Network.so.5.12.8
voice: /usr/lib/aarch64-linux-gnu/libQt5Core.so.5.12.8
voice: CMakeFiles/voice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable voice"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/voice.dir/build: voice
.PHONY : CMakeFiles/voice.dir/build

CMakeFiles/voice.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/voice.dir/cmake_clean.cmake
.PHONY : CMakeFiles/voice.dir/clean

CMakeFiles/voice.dir/depend: app_Main_qml.cpp
CMakeFiles/voice.dir/depend: app_UCSComponents_EmptyState_qml.cpp
CMakeFiles/voice.dir/depend: app_UCSComponents_RadialAction_qml.cpp
CMakeFiles/voice.dir/depend: app_UCSComponents_RadialBottomEdge_qml.cpp
CMakeFiles/voice.dir/depend: qmlcache_loader.cpp
	cd /home/mateo/voice/build/aarch64-linux-gnu/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mateo/voice /home/mateo/voice /home/mateo/voice/build/aarch64-linux-gnu/app /home/mateo/voice/build/aarch64-linux-gnu/app /home/mateo/voice/build/aarch64-linux-gnu/app/CMakeFiles/voice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/voice.dir/depend

