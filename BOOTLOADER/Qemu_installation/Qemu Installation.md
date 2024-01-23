## Qemu Installation ; )

* Qemu (<u>Q</u>uick <u>Emul</u>ator) used as a virtualization tool to emulate hardware in case its not avalible , expensive or you want to protect your hardware during testing phase as it mainly used in embedded system development to make you able to test and debug easily without risking your HW ,it supports many hardware architectures ( ex : ARM (used by Raspberry Pi and BeagleBone), AVR(Atmel MC ) , X86 ).
* Besides, Qemu provides a big advantage for Linux environment , as it can be integrated with Kernel based Virtual Machine " KVM " ->enable users to run virtual machines with minimal performance overhead on HW that supports virtualization extensions. 

## Steps to install Qemu :

Step 1 : for (ARM architecture ) :

```bash
#sudo apt install qemu-system-[emuator architechture]
# example :
#qemu-system-x86: for 32-bit x86 architecture.
#qemu-system-arm:  ARM architecture.
#qemu-system-mips:  MIPS architecture.
sudo apt install qemu-system-arm
```

Then check  Qemu installation :

```bash
#qemu-system-[emuator architechture] --version
qemu-system-arm --version
```

 
