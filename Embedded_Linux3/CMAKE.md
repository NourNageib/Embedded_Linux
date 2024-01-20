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
![Screenshot from 2024-01-20 13-42-33](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ec0b4a7a-9a20-49e1-9d11-8cdfc862e775)

### Step 3 :

```bash
cd build/
cmake .. 
make 
```
![Screenshot from 2024-01-18 18-43-17](https://github.com/NourNageib/Embedded_Linux/assets/151030617/32aff11c-8486-42b6-a860-709ac0fe50d4)

![Screenshot from 2024-01-20 13-37-12](h![Uploading Screenshot from 2024-01-18 18-43-17.png…]()
ttps://github.com/NourNageib/Embedded_Linux/assets/151030617/38390e3e-b000-43d2-9e60-c2133167ba12)
![Screenshot from 2024-01-20 13-37-32](https://github.com/NourNageib/Embedded_Linux/assets/151030617/8a893152-f8d9-4287-8af0-65437b7d6867)

**Output in build file :**

* **Static :**

![Screenshot from 2024-01-20 15-15-21](https://github.com/NourNageib/Embedded_Linux/assets/151030617/35c6c625-e851-481b-a0d0-d5718146375a)

* **Dynamic :**

![Screenshot from 2024-01-20 13-38-18](https://github.com/NourNageib/Embedded_Linux/assets/151030617/013b8767-af27-4163-81e1-b000e7f691f9)

NOW , your application is ready to run : - ) 

```bash
./APP
```
![Screenshot from 2024-01-18 18-31-09](https://github.com/NourNageib/Embedded_Linux/assets/151030617/2c7a77f8-cdcd-4d1c-b552-8d6746357fc5)

![Screenshot from 2024-01-20 13-38-59](https://github.com/NourNageib/Embedded_Linux/assets/151030617/452db298-51c2-4450-8558-fa0f831b10ea)


---------------------------------------------------------------------------------------------------------------------------------------------------------------

* Briefly difference between [ INTERFACE ,PRIVATE and PUBLIC ] :

| INTERFACE   | All the include directories following INTERFACE will NOT be used for the current target but will be accessible for the other targets that have dependencies on the current target, i.e., appending the directories to INTERFACE_INCLUDE_DIRECTORIES. |
| :---------- | ------------------------------------------------------------ |
| **PRIVATE** | **All the include directories following PRIVATE will be used for the current target only.** |
| **PUBLIC**  | **All the directories following `PUBLIC` will be used for the current target and the other targets that have dependencies on the current target**. |

reference : https://leimao.github.io/blog/CMake-Public-Private-Interface/ .

