cmake_minimum_required(VERSION 3.1...3.22)
project(app DESCRIPTION "Operations_App")
set(SRC_FILE
	 Lib/add.c
	 Lib/divide.c 
	 Lib/modulus.c 
	 Lib/multiply.c 
	 Lib/subtract.c 
 )
add_executable(APP main.c)
add_library(operations SHARED ${SRC_FILE})
target_include_directories(APP PUBLIC Include)
target_link_libraries(APP PUBLIC operations)
