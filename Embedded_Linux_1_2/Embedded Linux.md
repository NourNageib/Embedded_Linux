# Embedded Linux  [ Library ] : )

Generally, we use libraries because it's very useful when it comes to functions reusability or customized data-structures ,enums ,classes..etc.

Thus, it's important to use libraries in embedded Linux application because it gives more modularization,and code management.

## We have two types of libraries to be created:

1-Static library.

2-Dynamic Library.

when source code of your application is compiled it generates object file ,after this compilation state this generated object file will be linked through linker with other files to have executable for your application.

Linker while linking the object files, in your main.o(your application object file) there is some used functions implemented in another .c files which also compiled to generate its object file and need to be linked with main.o to make the linker familiar with the functions used in your application without implementation and declaration  . 

3- also we have builtin libraries in linux (uclib , muscl ,Glibc)

## **Static library**

we have two files : ex:

target to have -> simple math operations library          (ADD,SUB,MUL,MOD,DIV),                                                 statically linked library -> " operations.a"

### Step 1 :

#### Preparing Library files  ( .h   .c ) :

preparing your directories ,header files and source file.

```bash
 mkdir Static_library_operations 
 cd    Static_library_operations 
 mkdir Include Lib
 cd    Include
 touch add.h sub.h mod.h mult.h div.h
 cd    ..
 cd    Lib
 touch add.c sub.c mod.c mult.c div.c
```



##### 1- add.c  " add function implementation "  :

```c
/*Implementation of add fnction*/
int ADD(int oprand1, int oprand 2)
{
	return (oprand1+oprand2);
}
```

##### 2- add.h "add function Declaration" :

```c
/*Function declaration*/
int ADD(int oprand1, int oprand 2);
```

##### 3- sub.c " sub function implementation" :

```c
/*Implementation of sub fnction*/
int SUB(int oprand1, int oprand 2)
{
    if(oprand1 > oprand2)
    {
        return (oprand1-oprand2);
    }
    else
    {
        return (oprand2-oprand1);
    }
	
}
```

##### 4- sub.h " sub function Declaration" :

```c
/*Function declaration*/
int SUB(int oprand1, int oprand 2);
```

##### 5- mult.c " mult function implementation" :

```c
/*Implementation of mul fnction*/
int MULT(int oprand1, int oprand 2)
{
        return (oprand2*oprand1);
	
}
```

##### 6- mult.h " mult function Declaration" :

```c
/*Function declaration*/
int MULT(int oprand1, int oprand 2);
```

##### 7- div.c " div function implementation" :

```c
/*Implementation of div fnction*/
float DIV(int oprand1, int oprand 2)
{
    if(oprand2==0)
    {
        printf("ERROR CAN'T DIVIDE BY ZERO");
    }
    else
    {
              return (oprand1/oprand2);   
    }
	
}
```

##### 8- div.h " div function Declaration" :

```c
/*Function declaration*/
float DIV(int oprand1, int oprand 2);
```

##### 9- mod.c " mod function implementation" :

```c
/*Implementation of mod fnction*/
int MOD(int oprand1, int oprand 2)
{
       return (oprand1%oprand2); 
	
}
```

##### 10- mod.h " mod function Declaration" :

```c
/*Function declaration*/
int MOD(int oprand1, int oprand 2);
```

**Note :** you can implement all math operations functions in one single .c file same for the functions declaration.

##### 11- main.c " your application" :

```c
#include <stdio.h>
#include <calc.h>
/*you can use for now #include "/Include/calc.h" later you will know how to use #include <calc.h>*/
int main(void)

{          
        int num1,num2;
	printf("Enter two oprands :\noprand1 : ");
	scanf("%d",&num1);
	printf("\noprand1 : ");
	scanf("%d",&num2);
	printf("\nAddition : %d\n",add(num1,num2));
	printf("Subtraction : %d\n",subtract(num1,num2));
        printf("Division  : %.2f\n",divide(num1,num2));
         printf("Multiplication  : %d\n",multiply(num1,num2));
	return 0;
}
```



### Step 2 :

generating object file for each " .c " file  [Compilation process] .

```bash
gcc -c sub.c mult.c mod.c div.c add.c -o sub.o mult.o mod.o div.o add.o
```

expected output of this phase is (sub.o, add.o, mult.o,mod.o,div.o)

### Step 3 :

#### Creating the a single archive file for all functions of my  Library . Note : all object files will be removed and will be replaced with 

```bash
ar -rcs liboperations.a *.o 
```

we use " ar " command to create an archive file for all library files 

**ar** ->   Short for archive.

**r**   ->   Replace or add files to the archive.

**c**   ->  Create the archive if it doesn't exist.

**s**   ->  Write an index for faster access.

liboperations.a -> The output archive file that will be created from all .o object files.

 ***.o** -> will add all .o files in the current directory to be archived and create a static library named operations .         (Note,its convention  to add prefix to library name with "lib" and use the ".a" extension for static libraries. )

Another way in case of  not archiving the object files :

```bash
 ar -rcs liboperations.a sub.o mult.o mod.o div.o add.o
```

now static library is created .

### Step 4 :

Now compiling  the main.c file, links it with the `liboperations.a` library located in the `./Lib` directory, and produces an executable named `Calculator_1`. The resulting executable is statically linked, meaning it includes the library directly.

```bash
gcc main.c -L ./Lib/ -I ./Include/ -loperations -static -o app
```

**gcc**                 -> for GNU compilation

**-static**            -> flag used for creating a statically linked executable (Default flag if you omitted "-static " is "shared" thus                          			   you must include this flag in your command).

**main.c**            -> application source file.

**-o**                    -> flag for the output executable of your application.

**Calculator_1** -> name of the executable.

-**loperations** -> name of the static library created tells the linker while linking process link library name operations . 

**-L./Lib**            -> tell the linker from where to reach your library.

**I./Includes**     ->tell the linker from where to reach your header files for library.

Note : you can use file command to determine properties of any file![image-20240118161940213](/home/nour/snap/typora/86/.config/Typora/typora-user-images/image-20240118161940213.png)

```bash
file app
```

![Screenshot from 2024-01-18 16-18-59](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 16-18-59.png)

![Screenshot from 2024-01-18 15-20-09](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 15-20-09.png)

![](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 11-26-08.png)

### Step 5 "Optional Step":

you instead of the headache of writing directories of includes and libraries each time you can copy them in files where system search by default.

**example : copy includes in -> /usr/include** 

![Screenshot from 2024-01-18 15-27-36](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 15-27-36.png)

![Screenshot from 2024-01-18 15-32-13](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 15-32-13.png)

![Screenshot from 2024-01-18 15-33-57](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 15-33-57.png)

**Now you can remove this line and replace** 

"Figure 1"

![Screenshot from 2024-01-18 13-30-42](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 13-30-42.png)

by "Figure 2"

![Screenshot from 2024-01-18 15-36-19](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 15-36-19.png)

By this all functions become **ABS** ->absolute which means the address of these functions become fixed unchangeable address not  subject to reallocation during linking process.

hint :

[You can see this data by using objdump -> display info about objectfiles, sharedlibraries,executable files ].

you use **-t** -> flag to show symboltable to list functions and variables and their addresses in the file.         -**d** -> flag used for displaying assembly cod of machine instruction in object or executable file to understand the low-level code generated by the compiler. 

![Screenshot from 2024-01-18 14-10-49](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 14-10-49.png)

### **Step 5 "Optional Step":**

if you want your application run from anyplace in your system you have to place the output executable application in **/usr/bin**

![Screenshot from 2024-01-18 13-04-39](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 13-04-39.png)

![Screenshot from 2024-01-18 12-48-02](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 12-48-02.png)

Now , you can run your application from anywhere and will **run.**

![Screenshot from 2024-01-18 12-48-47](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 12-48-47.png)

---------------------------------------------------------------------------------------------------------------------------------------------

## **Dynamic library** 

target -> library.so

Dynamic library (Shared Library) contain all codes and files needed by more than one program simultaneously "Thus dynamic library is being linked during runtime during execution of the program".

its based on dynamic linking method thus, multiple program to share same library.

###  Step 1 :

same as step 1 in static library .

###  Step 2 :

first begin compiling each ".c" file in the current directory into a position independent object file ".o" . The resulting object files can be later used to create a shared library by linking them together.

```bash
 gcc -c *.c -fpic
```

**-fpic -**>  Position-independent code is flag that used to load and execute these output files  at any memory address, making it suitable for shared libraries. This is  essential when creating dynamic Library because they can be  loaded into different memory locations by different programs.[Portable]

###  Step 3 :

creating the dynamic library by :

Linking previously compiled source file containing all functions you want to reuse in your applications into a shared library named **liboperations.so**

```bash
gcc *.o -shared -o liboperations.so
```

![image-20240118170634127](/home/nour/snap/typora/86/.config/Typora/typora-user-images/image-20240118170634127.png)

Now you created your shared library (dynamic library) : )

you can check type of created library  using 

command :

```bash
file liboperations.so
```

![Screenshot from 2024-01-18 14-07-34](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 14-07-34.png)

###  Step 4 :

```bash
gcc  -o main  main.o -L. -liboperations
```

In this step you are linking output executable target main with object file of your application with the dynamically shared library created in previous step.

![Screenshot from 2024-01-18 14-07-07](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 14-07-07.png)

![Screenshot from 2024-01-18 14-02-15](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 14-02-15.png)

![Screenshot from 2024-01-18 14-05-26](/home/nour/Pictures/Screenshots/Screenshot from 2024-01-18 14-05-26.png)

here functions are UND ? because, its dynamically linked it doesnot have a fixed address its address changes ,it will be defined in runtime with the executable file that uses this dynamic library.

### Briefly :

In summary, the key distinction is that static libraries are linked at  compile time, resulting in standalone executables, while dynamic  libraries are linked at runtime, allowing for shared library  among  multiple executables. Each approach has its own advantages and  trade-offs, and the choice often depends on factors , application and system compatibility.





