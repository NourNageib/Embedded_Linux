# Embedded_Linux : [CMakeFile] ; - )

Generally Makefile provides you easy way for build process as you can write all required commands in single file and begin execution line by line as a script you wrote for specific target without repeating  set of commands each time you wan to do the same thing so ,more easier to write make command and it will begin execution your makefile (make it more portable and reusable).

Thus, target is to have application using a statically linked library which will be created through cmakefile.txt commands.

### Step 1 :

first, create folder named build ,to place all files, library  and executable application resulted from the build process of cmake in build folder.

```bash
mkdir build
```

### Step 2 :

preparing all needed folders Lib and Include folders which have the implementation and declaration of your function used in your application also main.c file where you write your application .

```bash
touch CMakeLists.txt
```

CMakeLists.txt -> txt file to write the cmake script.

```bash
vim CMakeLists.txt
```

**1- Define the minimum version of CMake required to build this project to ensure the CMake version used meets the minimum version specified.**

3.1...3.22 means all versions range from 3.1 to 3.22 is ok.

```cmake
cmake_minimum_required(VERSION 3.1...3.22)
```

**2-  Then using `project` to define some descriptions of your project :**

* <project_name>     ->giving name for your project (example : calculator ).

* VERSION               -> mentioning the version which this project support.

* DESCRIPTION       -> giving a simple comment description to your project (example : "Building calculator project ").

* HOMEPAGE_URL   -> if you want to give URL for your homepage or project .

* LANGUAGES          -> mentioning the programming languages used in your project (CXX ,C...etc),

  (Note : if not mentioned it will be auto detected ) .

```cmake
project(<project_name> 
        [VERSION <version>] 
        [DESCRIPTION <description>] 
        [HOMEPAGE_URL <url>]
        [LANGUAGES <language>...])
```

* In this example :

```cmake
project(app DESCRIPTION "Operations_App")
```

**Creating variable for my library source file :**

```cmake
set(SRC_FILE
	 Lib/add.c
	 Lib/divide.c 
	 Lib/modulus.c 
	 Lib/multiply.c 
	 Lib/subtract.c 
 )
```

* `set` command is used to create or modify variables in CMake , in this case creating a variable name SRC_FILE which contain all source files in Lib directory to create my library using this variable instead of rewriting all these directories each time needed.



* `add_executable` command in CMake is used to define an executable target in your CMake project.

```cmake
add_executable(APP main.c)
```

`APP`       -> The name of the executable .

`main.c` -> The source file that should be compiled to create the executable



* `add_library` -> command in CMake is used to add a library.

```cmake
 add_library(operations STATIC ${SRC_FILE})
```

`operations`   -> name of my library. 

`STATIC `           -> specifies that the library will be created is static library (linked with program at compile time ).

you can use `SHARED` if you want a dynamic library to be created ;thus , a  `liboperations.so` will be created instead.

`${SRC_FILE}` -> predefined variable we set using `set` command for my library source code files.

Then, after running this command a resulting static library liboperations.a will be then linked with my program at compile time.

* `target_include_directories` Command to define the include file directories.

```cmake
target_include_directories(APP PUBLIC Include)
```

`APP` project executable to which the include directory will be added to.

Finally :

link your library with the target executable.

```cmake
target_link_libraries(APP PUBLIC operations)
```

NOW, CMakeLists.txt is ready.

### Step 3 :

```bash
cd build/
cmake .. 
make 
```

NOW , your application is ready to run : - ) 

```bash
./APP
```



---------------------------------------------------------------------------------------------------------------------------------------------------------------

* Briefly difference between [ INTERFACE ,PRIVATE and PUBLIC ] :

| INTERFACE   | All the include directories following INTERFACE will NOT be used for the current target but will be accessible for the other targets that have dependencies on the current target, i.e., appending the directories to INTERFACE_INCLUDE_DIRECTORIES. |
| :---------- | ------------------------------------------------------------ |
| **PRIVATE** | **All the include directories following PRIVATE will be used for the current target only.** |
| **PUBLIC**  | **All the directories following `PUBLIC` will be used for the current target and the other targets that have dependencies on the current target**. |

reference : https://leimao.github.io/blog/CMake-Public-Private-Interface/ .

