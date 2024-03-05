# **THE  YOCTO PROJECT  : ** )

--------------------------

In fact, " YOCTO is not an embedded Linux distribution, it creates its own.”       

> **“Ubuntu as a tool can be categorized under Operating Systems, while Yocto is categorised under                    Infrastructure Build Tools.”**

//


![YP_Featured-Image](https://github.com/NourNageib/Embedded_Linux/assets/151030617/46ec3b75-59af-4323-9353-2f0c4876f011)


![Screenshot from 2024-03-03 12-46-42](https://github.com/NourNageib/Embedded_Linux/assets/151030617/80b2c22e-615d-4eb9-ab8e-acdf7b7c14fc)


![Screenshot from 2024-03-04 09-06-31](https://github.com/NourNageib/Embedded_Linux/assets/151030617/bc646bcf-4439-42bb-a3ec-eab377fca0e4)



 Consequently, yocto is an organization as a platform to create a customized Linux-system based distribution by creating an OS (LINUX-BASED) and embedded based packages.

---------------------------

##                                                                                 				                                        ♦️   **YOCTO VS BUILDROOT**  ♦️

|              POINTS               |    YOCTO     |  BuildRoot   |
| :-------------------------------: | :----------: | :----------: |
|           **Approach**            |   Flexible   |    Simple    |
|         **Customization**         |  Extensive   |   Limited    |
|      **Tool Configuration**       |   Advanced   |    Basic     |
|      **Package Management**       | Feature rich |    Simple    |
|       **Long-term Support**       |   Extended   |   Limited    |
| **Development Environment Setup** |    Heavy     | Light Weight |
|    **Size of Generated Image**    |    Large     |   Smaller    |
|          **Build Time**           |    Longer    |     Fast     |



## 🔶 YOCTO Components :

----------

![Screenshot from 2024-03-04 09-04-19](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ad5e52e1-efdf-4375-88ea-ccc1401158d5)


--------------------

### 🔹Poky :

-------------

Poky is reference provided by YOCTO organization to help building your customized distribution for embedded systems, enabling developers to create optimized and tailored software solutions for their target devices.

It provides a focused and stable subset of **Open-Embedded** upon which you can easily and reliably build and develop.

* **meta-poky** = >  is directory under Poky specific for poky metadata.
* **meta-yocto-bsp** => is directory under Poky where Yocto Project-specific Board Support Packages (BSPs).

**🔹Open-Embedded -Core:**

-------------------------------

Open-embedded is a framework it provides a  set of tools , libraries , configurations and documentations as metdata which is then used by poky to build custom linux distribution for embedded systems.

**Components of OE :**                                                                                                                                                                              

--------------

* **OE-Core :** it provides robust core functionality by providing a flexible framework for building linux distro as it contain tools for configuring , compiling and packaging software components as providing **bitbake** which is  the main tool to build linux distro.
* **Bitbake Tool :** is the main tool used in build process , it interprets recipes ,resolve dependencies ,execute tasks and generate the final images and packages thus its considered to be as the main cook for recipes provides to have your SW packages or images, with the flexibility of defining build configurations and workflows.
* *

​                                                       

​                                                             ♦️   **Poky VS Open-Embedded**  ♦️

|                   | Poky                                          | Open-Embedded                                     |
| ----------------- | --------------------------------------------- | ------------------------------------------------- |
| **Type**          | Reference distribution                        | Build framework                                   |
| **Scope**         | Standardized set of configurations and layers | Broad framework for building custom distributions |
| **Customization** | Limited customization options                 | Extensive customization possibilities             |
| **Community**     | Strong community support (Yocto Project)      | Diverse community with various layers and tools   |
| **Flexibility**   | Provides a starting point for development     | Offers full control and flexibility               |
| **Usage**         | Suitable for quick prototyping and testing    | Ideal for creating custom, tailored distributions |

Thus , poky as a reference distribution relies on OpenEmbedded build system to aid in build process. 

### 🔹Layer :

---------------------

Yocto layers provide a modular and flexible way to organize and manage  customizations and additions to the Yocto Project. Each layer can  contain recipes for building specific software packages, configuration  files, and other resources.

![Screenshot from 2024-03-05 03-37-33](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ac7efab5-90b1-4007-80ee-b498b4493db0)


### 🔹Recipe:

----------------------

Yocto recipes specify how to download, configure,  compile, and install software packages into the target system. They  define the build process for individual software components, including  dependencies, compilation options, and installation paths.

🔹**Metadata** :

---------------------------

Metadata provides essential information for the Yocto build system to  understand and manage software components, their dependencies, licenses, and configurations.(ex : layer, image & recipe metadata)

### 🔹Bitbake :

--------------

BitBake is the tool at the heart of Poky and is responsible for parsing the metadata, generating a list of tasks from it    and then executing them. 

### 🔹Configuration files :

-----------

Configuration files define settings and parameters that control how the  Yocto build system operates and how the final target system image is  generated.

```bash
#Search for all .conf files
find . -type f -name "*.conf" 2>/dev/null | sed 's|^|./|; s|[^/]*/|── |g'

```
![Screenshot from 2024-03-03 16-55-04](https://github.com/NourNageib/Embedded_Linux/assets/151030617/3ecb8a30-dd94-45f1-97a6-e811e8fe9614)


### 🔹**Packages**:

----------------

Packages are individual software components, libraries, utilities, or  applications that are compiled, packaged, and installed as part of the  Yocto build process. They provide the functionality and features of the  target system.

### 🔹SDK (Software Development Kit) :

---------------

SDK provides everything developers need to build, debug, and deploy applications for Yocto-based embedded Linux systems. It includes  cross-compilation toolchains, libraries, headers, and utilities  necessary for software development.

### 🔹Image:

---------------

In the Yocto Project, an image refers to the complete software stack that will be installed and run on the target embedded device. 

-------------

**Note :**

**Types of Images:**

- **Base Images:** Minimal images containing essential components required for booting and running the system, often used for development or testing purposes.
- **Target Images:** Fully functional images tailored for specific use cases or applications, including additional software components, libraries, and configurations.
- **SDK Images:** Images containing development tools, headers, and libraries necessary for software development on the target system, used to create applications and debug software.

---

## 📌 **Steps to YOCTO :**

----------------------

### 1 -  Create YOCTO directory under which will clone yocto repo  :

```bash
#Create yocto directory and switch on it
mkdir yocto && cd yocto
```

### 2 -  Clone YOCTO :

-------------------------------------------------------------------------------------------------------------------------------------------------------------

```bash
#clonning yocto of kirkstone version
git clone -b kirkstone https://git.yoctoproject.org/git/poky.git
#clonning yocto of dunfell version
git clone -b dunfell https://git.yoctoproject.org/git/poky.git
#switch to poky directory
cd poky
```

![Screenshot from 2024-03-05 06-06-48](https://github.com/NourNageib/Embedded_Linux/assets/151030617/14e4676b-96db-484e-992a-b84e99d4670e)

**Here, lets differentiate between :**

- Dunfell is version 3.1 of the Yocto Project, released in June 2020.
- Kirkstone is version 3.2 of the Yocto Project, released in October 2020.

Each release represents a progression in the development of the Yocto Project, with Kirkstone being a newer version compared to Dunfell. Kirkstone likely includes updates, enhancements, and possibly new features compared to Dunfell, reflecting ongoing development efforts within the Yocto Project community.



### 3 - Setting your environment :

-----------------

* To be ready to configure and initiate the build process for your embedded linux distribution using tools like `bitbake`:

```bash
# source oe-init-build-env <build directory name or path/to/directpryname
source oe-init-build-env build
```

- **Source (`source`)** :

​	In a shell context, `source` is a shell built-in command that runs the script specified as an argument in the current 	shell environment. 

- **oe-init-build-env**:

​	`oe-init-build-env` is a script provided by the Open-Embedded build system. It is used to initialize the build 	      	 environment for a specific build directory. This script sets up various environment variables and configurations 	 needed for the build process, including paths to configuration files, build directories, and other settings.

- **build**:

​	`build` is the name of the directory where the build environment will be initialized. You can replace `build` with any 	 desired directory name. Default name will be build if you didn't provide name for the buildenv directory thus 

=> Create environment to run `bitbake` , besides it append PATH variable with -> /home/nour(username)/yocto/bitbake/.

Automatically, you will be switched to your build directory.

![Screenshot from 2024-03-05 06-09-03](https://github.com/NourNageib/Embedded_Linux/assets/151030617/742795cd-0709-4626-895d-80797fcca10b)


```bash
# change directory to conf
cd conf
```

**Setting some environment configurations :**

```bash
# edit the file local.conf
nano local.conf
```
![Screenshot from 2024-03-05 06-10-38](https://github.com/NourNageib/Embedded_Linux/assets/151030617/04879b60-e1de-4d6a-9d9f-27aac8c413a9)


a - Comment Default machine -> Qemu 

**##The default machine to be qemux86-64 if no other machine is selected => " we need to comment it "** 

```bash
#MACHINE ??= "qemux86-64"
```
![Screenshot from 2024-03-03 18-03-58](https://github.com/NourNageib/Embedded_Linux/assets/151030617/4e9729c1-4849-4e50-9722-db4534b5f6b7)



b - Un-Coomment Machine -> Beaglebone

**There are also the following hardware board target machines included for demonstration purposes:**

```bash
MACHINE ?= "beaglebone-yocto"
```

![Screenshot from 2024-03-03 18-04-13](https://github.com/NourNageib/Embedded_Linux/assets/151030617/6438e247-a512-4ed7-a884-099a031bcbe2)



c -  ${TOPDIR} -> replace this value with your absolute home directory to yocto :

```bash
##DL_DIR ?= "${TOPDIR}/downloads"
DL_DIR ?= "/home/nour/yocto/downloads"
```
![Screenshot from 2024-03-03 18-14-00](https://github.com/NourNageib/Embedded_Linux/assets/151030617/d2c99b9a-2420-4af9-bb5a-eea0689a2b72)


To set the download directory.

This means downloaded source code and files for recipes will be stored in the `downloads` directory within your Yocto Project environment. The `${TOPDIR}` variable refers to the top-level directory of your Yocto Project environment, typically where your `build` directory is located. This configuration helps organize and manage downloaded files during the build process.

d - ${TOPDIR} => same as previous step 

```bash
#SSTATE_DIR ?= "${TOPDIR}/state-cache"
SSTATE_DIR ?= "/home/nour/yocto/sstate-cache"
```

![Screenshot from 2024-03-03 19-02-58](https://github.com/NourNageib/Embedded_Linux/assets/151030617/a3957047-31b9-4ce3-a261-a05dabaca08a)


Here, we specify location directory for shared state cache  of your yocto project environment                                                                               **shared state cache** => This is used by yocto to improve system performance by reusing immediate build arifacts  across multiple builds.

⚠️ **NOTE = )**                                                                                                                             

**Arifacts** : its the immediate or the output generated output files from build process.                                                         (ex :compiled binaries, object files, libraries, documentation files,  configuration files, and other resources created as part of the software build.)

#### ◾**Summary :**

------------------------

1. ##### **Creates Build Directory**:

   - If the "build" directory does not already exist in the current directory, the command creates it.

2. ##### **Copies Configuration Files**:

   - Copies the necessary configuration files (`conf` directory) from the Yocto Project's **metadata** into the **"build"** **directory**.

3. ##### **Sets Up Environment Variables**:

   - Sets up environment variables required for building with Yocto Project, such as `BBPATH`, `BUILDDIR`, `OEROOT`, `TMPDIR`, and others.

     **OEROOT** -> open-embedded root directory(This variable points to the **root directory** where the core components of the **OpenEmbedded** build system are located.).

     **TMPDIR**   -> temporary directory used to define the location where various temporary files, such as  object files, intermediate build artifacts, downloaded source code  archives, and package build directories, are stored during the build.

4. ##### **Sets Up BitBake**:

   - Initializes BitBake, the build tool used by the Yocto Project, in the current shell session.

5. ##### **Sets Up Metadata Layer Paths**:

   - **Adds** paths to the Yocto Project's **metadata** layers (`layers` directory) to the `BBLAYERS` variable, allowing BitBake to locate recipes and configuration files.

6. ##### **Sets Up Other Build-related Variables**:

   - Sets up various other variables and settings related to the build environment, such as the location of the shared state cache (`SSTATE_DIR`) and the download directory (`DL_DIR`).

/////////////



### 💥 Build YOCTO Project :

--------------

```bash
bitbake -k core-image-minimal
```

This Command build the `core-image-minimal` image recipe using build tool => BITBAKE.

* **bitbake** => invokes buildtool bitbake which is the core component of the yocto project to build system

  (yocto main lab to cook your recipes)

  it reads recipes and metadata to execute tasks required to build SW packages and images required.

* **`- k`** => option to bitbake tool to give the option of continue build even if an error exist.

* **`core-image-minimal`** => Its is an image recipe provided by yocto organization to build minimalistic linux distribution example  


![Screenshot from 2024-03-04 08-12-08](https://github.com/NourNageib/Embedded_Linux/assets/151030617/5cfd66d2-260c-4366-b1ca-fd3a913dbeed)



*🔥  **ERROR FOUND  🔥:***                                                                                                                                                         

----------------

 **♦️  problem 1 :**

  While, running `bitbake -k core-image-minimal` => **error bitbake: command not found !**

  path of bitbake executable is not appended to PATH system variable.

**Solution :**

-------------

```bash
nano ~/.bashrc
#write -> echo PATH ="/home/dir/toyour/bibake/exe:$PATH"
#if you can't find 
find / -name bitbake
#copy directory 
#or append directly to bashrc file 
echo 'export PATH="/home/nour/Nour/yocto/poky/bitbake/bin:$PATH"' >> ~/.bashrc
# To apply the changes to the current shell session.
 source ~/.bashrc
 # To ensure it appended
 echo $PATH
```
![Screenshot from 2024-03-04 06-26-04](https://github.com/NourNageib/Embedded_Linux/assets/151030617/e223ed5f-7c95-4e17-979b-8bfa14cb0311)

![Screenshot from 2024-03-04 06-24-47](https://github.com/NourNageib/Embedded_Linux/assets/151030617/e0959cc4-0e09-4bfe-b113-3b110f6a9300)

 ![Screenshot from 2024-03-04 06-27-13](https://github.com/NourNageib/Embedded_Linux/assets/151030617/2e5e1a4f-62fb-42cf-a7c2-a25ce9be8c38)



**♦️  problem 2 :**

```bash
#ERROR: The following required tools (as specified by HOSTTOOLS) appear to be unavailable in #PATH, please install them in order to proceed:
#chrpath diffstat lz4c
```
![Screenshot from 2024-03-04 06-29-06](https://github.com/NourNageib/Embedded_Linux/assets/151030617/2c0887d6-7758-4de7-a309-99ac77e565ae)


This error bec, certain tools required for the Yocto Project build process are missing from your system's PATH.

**Solution :**

---

```bash
sudo apt update
sudo apt install chrpath diffstat liblz4-tool
```

![Screenshot from 2024-03-04 06-29-12](https://github.com/NourNageib/Embedded_Linux/assets/151030617/024b859f-05a7-431b-833b-86c7361a8004)


​                                      **NOW YOU CAN BUILD THE MINIMAL YOCTO IMAGE RECIPE**


![Screenshot from 2024-03-04 06-31-03](https://github.com/NourNageib/Embedded_Linux/assets/151030617/fb5c6373-240e-4e03-b39e-4c1947fc5239)



---------------------

## 📌 **Steps to build a recipe :**                                                                                                                

--------

### 🔶 Step 1 -> Create layer :

-----------

![Screenshot from 2024-03-04 20-26-11](https://github.com/NourNageib/Embedded_Linux/assets/151030617/4a3c6951-a1c1-4d29-ae9d-bbfe1fb2d2f7)


```bash
#bitbake-layers add-layer /home/abs/path/to/your/layer/
bitbake-layers add-layer /home/nour/Nour/yocto/poky/meta-nour/
#check your path added to BBLAYERS global variable 
bitbake-layers show-layers
#Then start writting your recipe
```

⚠️ **NOTE = )**   

---

**bitbake** commands only runs under **build directory**.

* **WHY  ⁉️**

**Because** , that's where **bitbake** expects to find the metadata and configuration files necessary for the build process. Besides, by running **bitbake** commands within the build directory, it ensures that  the build environment is isolated from other parts of the Yocto project. This helps prevent conflicts and ensures that **bitbake** operates within a controlled environment.

----------------

![Screenshot from 2024-03-04 20-27-02](https://github.com/NourNageib/Embedded_Linux/assets/151030617/0a6fb295-c820-44b5-bd64-200b8c7b7e8c)


![Screenshot from 2024-03-04 20-27-31](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ade88c4b-0627-4be1-bc5c-e4fa07e3acfa)

----------



### 🔶 Step 2 -> Write your recipe :

---

🔹 **General** outline :

1. **Metadata:**

   - SUMMARY: description of the recipe.
   - DESCRIPTION: Detailed explanation of the recipe's purpose and functionality.
   - LICENSE: License type governing the software package (ex : MIT).

2. **Source:**

   - SRC_URI: URL or file path to the source code point to a remote location (e.g., a tarball hosted on a website) or a local file.
   - S: or set this variable => S = "${WORKDIR}/source".

3. **Tasks:**

   - do_unpack(): Unpacks the source code archive .
   - do_patch(): Applies any necessary patches to the source code.
   - do_configure(): Configures the software for building.
   - do_compile(): Compiles the software.
   - do_install(): Installs the compiled binaries and other files.

4. **Dependencies:**

   - DEPENDS: List of other recipes or packages that this recipe depends on.

5. **Variables:**

   - Specify any additional variables needed for configuration, compilation, or installation.
   - Examples include CFLAGS, LDFLAGS, EXTRA_OECONF, etc.

6. **Optional Tasks:**

   - do_package(): Packages the installed files into a format suitable for distribution.
   - do_populate_sysroot(): Copies necessary files to the target sysroot for cross-compilation.

7. **Testing and Debugging:**

   - Test the recipe by building it within your Yocto environment.

   - Use debugging tools like bitbake's `-c` option to inspect specific tasks or errors.

     

     ```bash
     ########################### RECIPE OUTLINE ###############################
     ###    HEADER PART   ###
     SUMMARY = "Example Recipe"
     DESCRIPTION = "An example recipe for demonstration purposes"
     LICENSE = "MIT"
     
     ###  VARIABLES PART  ###
     SRC_URI = "http://example.com/software.tar.gz"
     S = "${WORKDIR}/software"
     
     ### DEVELOPMENT PART ###
     do_unpack()
     {
         tar -xf ${WORKDIR}/software.tar.gz -C ${S}
     }
     
     do_configure() 
     {
         ./configure --prefix=${D}
     }
     
     do_compile()
     {
         make
     }
     #WILL NOT reach this step Except if you added your package name 
     #in global var IMAGE_INSTALL
     do_install() 
     {
         make install
     }
     #added task  task name => "hello"
     python do_hello()
     {
     	bb.plain("HI ;)");
     }
     
     #you can define task Behavior 
     #addtask do_yourask_name after/before other task
     addtask do_hello before do_install
     
     #you can add task dependencies
     do_hello[depends] += "other_task:do_compile"
     
     
     ```

     

-----------------

**after save your recipe , run :**

```bash
#in your layer dir using bitbake-layers add-layer
cd recipes-example/
cd example/
#rename recipe 
mv  myrecipe_0.1.bb myrecipee_0.1.bb
# start writing your recipe
nano myrecipee_0.1.bb 
#check your recipe added 
bitbake -s
#make sure don't write the version number of your recipe or extension
#bitbake yourrecipename 
# bitbake myrecipee_0.1.bb ❌ 
bitbake myrecipee
```
![Screenshot from 2024-03-04 20-48-01](https://github.com/NourNageib/Embedded_Linux/assets/151030617/8a6954df-0e71-4894-8106-da5e8cf6b943)


![Screenshot from 2024-03-05 04-27-53](https://github.com/NourNageib/Embedded_Linux/assets/151030617/75458c06-8f69-4f36-8acb-de2c8d61aa32)

![Screenshot from 2024-03-05 04-31-38](https://github.com/NourNageib/Embedded_Linux/assets/151030617/94ef84fd-ae7d-4473-babf-b1b4881054e2)



​                          **Once run congratulations 😉 you now have a customized recipe** 


![Screenshot from 2024-03-05 04-12-42](https://github.com/NourNageib/Embedded_Linux/assets/151030617/6a249e4f-3e44-4c1b-bfa5-027822343033)


![Screenshot from 2024-03-05 06-23-34](https://github.com/NourNageib/Embedded_Linux/assets/151030617/3808eda9-7bfb-49b8-90e4-70fde89e8b44)


![Screenshot from 2024-03-05 04-27-39](https://github.com/NourNageib/Embedded_Linux/assets/151030617/d9531c23-2da3-4bb1-8efe-94163312647e)


--------------

🔹**Some useful bitbake commands :**

```bash
#Command used to display the help information for the BitBake build tool
bitbake -h

#Lists all recipes available in the configured layers
bitbake-layers show-recipes

#Lists all rGlobal variables
bitbake-getvar varname

#Lists all layers available in the Yocto environment
bitbake-layers show-layers

#Adds a layer to the current build configuration
bitbake-layers add-layer

#Removes a layer from the current build configuration.
bitbake-layers remove-layer

#Creates a new layer structure
bitbake-layers create-layer

#Creates a new recipe file within a layer
bitbake-layers create-recipe

#Executes a specific task for a recipe (e.g., bitbake -c clean <recipe> to clean a recipe).
bitbake -c <task> <recipe>

#Lists all available tasks for a recipe
bitbake -c listtasks <recipe>

# Displays a summary of all available recipes
bitbake -s

#Generates task dependency graphs for a recipe.
bitbake -g <recipe>

#Shows the environment variables and their values used during the build of a recipe
bitbake -e <recipe>

#Prints the current build environment variables and their values
bitbake -p

# Continues as much as possible after an error occurs while building a recipe
bitbake -k <recipe>

#Performs a dry run without executing the actual build tasks for a recipe
bitbake -n <recipe>

#Shows the current and preferred versions of a recipe
bitbake -S <recipe>

bitbake-layers create-layer meta-nour
```

--------------

## Useful commands :

### 1 - **tree** command : 

generates a hierarchical listing of files and directories in the current directory, displaying the structure in a tree-like format.

```bash
sudo snap install tree  # version 1.8.0+pkg-3fd6
tree -a /home/nour/Nour/yocto/poky/meta-nour/
```

### 2 - gedit command :

```bash
#gedit filename
gedit local.conf
```



## 📎 References :

----------------

[https://github.com/FadyKhalil/EmbeddedLinux/blob/main/8-Yocto/5-BuildRecipe/README.md](https://github.com/FadyKhalil/EmbeddedLinux/blob/main/8-Yocto/5-BuildRecipe/README.md)

[https://docs.yoctoproject.org/4.0.12/overview-manual/yp-intro.html](https://docs.yoctoproject.org/4.0.12/overview-manual/yp-intro.html)

[https://docs.yoctoproject.org/1.6/bitbake-user-manual/bitbake-user-manual.html](https://docs.yoctoproject.org/1.6/bitbake-user-manual/bitbake-user-manual.html)

[https://www.yoctoproject.org/development/technical-overview/](https://www.yoctoproject.org/development/technical-overview/)

