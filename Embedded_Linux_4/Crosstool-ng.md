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
![Screenshot from 2024-01-03 09-51-24](https://github.com/NourNageib/Embedded_Linux/assets/151030617/e6b0fcf9-5a99-4861-bdc4-c1d209842b71)

![Screenshot from 2024-01-19 07-44-16](https://github.com/NourNageib/Embedded_Linux/assets/151030617/5faed161-c777-4fca-b1e8-41b956bd7bfc)

 

Choose avr architecture :

```bash
./ct-ng avr
```
![Screenshot from 2024-01-03 09-51-29](https://github.com/NourNageib/Embedded_Linux/assets/151030617/185b1f62-c2b6-4290-bf9b-bfa925e1e233)

Then ./ct-ng menuconfig command use to begin to config your toolchain and customize features you need to add as,you are more limited with memory size of your tool ,thus you can remove un- necessary features,

will open a menu you start to select options you want and disable options you don't.

```bash
./ct-ng menuconfig
```
![Screenshot from 2024-01-03 09-51-35](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ff483b48-5119-4d90-aff4-602092ca80fc)


### Step 3 : [Final step : ) ] 

Now you are ready to build your TOOLCHAIN 

```bash
 ./ct-ng build
```
![Screenshot from 2024-01-04 23-18-34](https://github.com/NourNageib/Embedded_Linux/assets/151030617/605506da-d1e9-445f-acf4-315ca3e3d003)


**Now you have your toolchain.** : )

You can repeat the same steps to download the arm cross-compiler 

Choose arm architecture :

```bash
./ct-ng arm-cortexa9_neon-linux-gnueabihf
```
![Screenshot from 2024-01-13 11-57-29](https://github.com/NourNageib/Embedded_Linux/assets/151030617/14ede922-50d8-4c21-8e3a-fa5430dc7c95)

Then configure your compiler :

```bash
./ct-ng menuconfig
```
![Screenshot from 2024-01-05 01-05-27](https://github.com/NourNageib/Embedded_Linux/assets/151030617/6e47eccb-0b56-484b-bf8d-5435b553eea2)

![Screenshot from 2024-01-13 10-54-24](https://github.com/NourNageib/Embedded_Linux/assets/151030617/895214c0-b1f5-4c2a-897d-9e76b804c895)
![Screenshot from 2024-01-13 10-55-59](https://github.com/NourNageib/Embedded_Linux/assets/151030617/4f7ad7e0-111d-432c-8b64-8ea86213d8de)

![Screenshot from 2024-01-13 10-56-58](https://github.com/NourNageib/Embedded_Linux/assets/151030617/55797781-d848-45c2-92f4-62bb115ba136)

![Screenshot from 2024-01-13 10-57-41](https://github.com/NourNageib/Embedded_Linux/assets/151030617/c3ba5565-64f9-4344-ac8c-fb6420e4aa12)

Now you are ready to build your TOOLCHAIN 

```bash
 ./ct-ng build
```

![Screenshot from 2024-01-13 11-57-15](https://github.com/NourNageib/Embedded_Linux/assets/151030617/ea2eb5fd-00bc-4103-a71e-db4b5c30619a)

![Screenshot from 2024-01-13 12-55-03](https://github.com/NourNageib/Embedded_Linux/assets/151030617/987f4d50-12af-4471-921a-2156cc0212eb)
![Screenshot from 2024-01-16 08-27-35](https://github.com/NourNageib/Embedded_Linux/assets/151030617/e21ba475-00a9-44a6-9b36-eb18b38bdcd6)


**Now you have your arm toolchain.** : )

********************************************************* **THE END** ***************************************************************
