## Embedded_Linux [Crosstool-ng] : )

Crosstool-ng is a tool designed to build customized toolchain and customize your compiler for your toolchain. Consequently, i gives the ability to create executables for your target (ex : arm , avr..etc ).

It provides an open source and easy way to configure your compiler  and creating toolchain only based on your embedded system application.

**To build a customized AVR Compiler :**

### Step 1 :

Download crosstool-ng from github.

```bash
git clone https://github.com/crosstool-ng/crosstool-ng.git
```

after downloading crosstool-ng on your device, checkout on commit " 25f6dae8 "

```bash
git checkout 25f6dae8
```

### Step 2 :

```bash
./bootstrap
```

This command for bootstrapping process to  set up the build environment for Crosstool-ng.

Mainly , ./bootstrap is script which run to generate the configure script by by running autotools through the bootstrapping process.

The generated Configure script target is mainly to check the system environments and the available  build-tools to build the system accordingly.



`./configure`is a script used to prepare a software package for building on your system.

`--enable-local` is a configuration option specific to the project.

```bash
./configure --enable-local
```



After running `./configure` to configure CrossTool-NG, you typically run the `make` command in the same directory where the `configure` script is located. This initiates the build process.

```bash
make
```



The `./ct-ng list-samples` command in the context of CrossTool-NG is used to display a list of available sample configurations and all supported Microcontrollers to choose your target architecture. 

```bash
 ./ct-ng list-samples
```

 

Choose avr architecture :

```bash
./ct-ng avr
```

Then ./ct-ng menuconfig command use to begin to config your toolchain and customize features you need to add as,you are more limited with memory size of your tool ,thus you can remove un- necessary features,

will open a menu you start to select options you want and disable options you don't.

```bash
./ct-ng menuconfig
```

### Step 3 : [Final step : ) ] 

Now you are ready to build your TOOLCHAIN 

```bash
 ./ct-ng build
```

Now you have your toolchain. 
