

## Embedded_Linux : [ Virtual SD-Card ] ; )

* Purpose of having SD-Card :

  SD-Card used in embedded system projects with Beaglebone ,Raspberry Pi or even virtually for emulated systems to store  (Boot Files , system image ,RFS (Root File Syatem)). From which the kernel starts up and the booting takes place, which is an inexpensive available option to use.

  SD-Card provides the advantage of the flexibility to reconfigure your boot , update your OS easily by just replacing the SD-Card with the new updates loaded on it.

* it's not necessary to use SD-Card specially, you can use any other portable storage device (ex : Hard Disk Drives (HDDs) ,NFS Server, HTTP Server , FTP Server, Mountable device (HDD and USB stick)  USB Flash Drives,Internal Flash Memory,Embedded Multimedia Cards ...etc).

  By default, wherever the boot files as boot and image which is necessary for the kernel to start exist , there is an if condition which handles the possibility of storing boot files in  any storage device this conditions are set based on bootloader configurations.

  

## Steps to create a virtual sd.img :

### 1- Step 1 creating a file named sd.img (name of your virtual disk image "name".img) :

*  sd.img    -> output virtual disk image named sd.img.
* /dev/zero -> file provides an endless stream of NULL Bytes( zeros ) ,as an input to initially fill sd.img . 
* bs            -> block storage "Defines the chunks of bytes to R/W at a time  " (will R/W 1MB at a time).
* count       -> Number of times o R/W.
* Thus, from bs and count it indicates the size of your SD -> size = count * bs -> 1MB * 1024 (1KB) = 1GB (Total size of your sd.img)

```bash
dd if=/dev/zero of=sd.img bs=1M count=1024
```

### 2 - Partitioning your SD.IMG :

* Now begin to define your sd card partitions type and size.

  cfdisk -> command used to create or modify partition on my disk image "sd.img".

```bash
cfdisk sd.img
```

|              Partition              |  Size  |
| :---------------------------------: | :----: |
| FAT partition (the boot partition ) | 200 MB |
| EXT4 partition (the RFS partition ) | 800 MB |

<u>**Create the FAT partition :**</u>

a - A window will open -> choose **dos** (DOS MBR partition).                                                                                                                                                                   b - Press -> **New**.                                                                                                                                                                                        c - Enter partition size "200MB"                                                                                                                                             d - Press -> **primary** (Partition used to install operating system and contain filesystem).                                                                        e - Enable **Bootable** option.                                                                                                                                                   f - press **Type** (Select prtition type ) -> **FAT16**.                                                                                                                      g - press **write**  -> **Quit**. 

<u>**Create the EXT4 partition :**</u>

a - A window will open -> choose **dos** (DOS MBR partition).                                                                                                                                                                   b - Press -> **New**.                                                                                                                                                                                        c - Enter partition size "800MB"                                                                                                                                             d - Press -> **extended** (Partition used to install operating system and contain filesystem).                                                                                                                                                                                                                        e - press **Type** (Select prtition type ) -> **Linux**( Linux is ext4 ,inwhich ext4 is a file system method of organizing and                              storing files on a storage device ).                                                                                                                                                                        f - press **write**  -> **Quit**. 

**Now you have your  -> sd,img  has 2 partitions (FAT 16 --- EXT4)** of total size 1GB.

To ensure your work is done successfully  use :

```bash
fdisk -l sd.img
```

or 

```bash
parted sd.img print
```



----------------------------------------------------------------------------------------------------------------------------------------------------------------

### **3 - Map the created sd.img as a hardware device in my system :**                                                                                                     

In linux we have the option of creating a special block device , thus to map a normal file system to virtual block,then you are able to access and manipulate in our case your image content as if it were physical storage device.

The advantage of this is , you can have a SD-Card image as a physical hardware and interact with your image file system without having it in hand.

Thus, we use LOOP DEVICE as a virtual file system , which provides a level of abstraction that simplifies handling of disk images in case of no available hardware (ex. when working on emulator ).

#### Step 1 :

```bash
sudo losetup -f --show --partscan sd.img
```

* Here you have to use `sudo` to ensure that only authorized users can perform potentially risky operations with loop devices and disk images.

- losetup     -> command to associate regular files with loop device to be as a block device.
- -f               -> flag to find the first available loop device.
- --show      -> to show loop device and file associated to it.
- --partscan -> if the device (sd.img) partitions it attempt a loop device for each partition.(ex if the avaliable device                       .                     loop18 -> "loop18p1"  &  "loop18p2").

**create a global variable for the created loop device to ease its use : **

```bash
export DISK=/dev/loop18
```

**Now you set loop device for the sd.img with its partitions so you can easily access each partition of the image with loop device individually.**

#### Step 2 :

Now we are creating a file system on specified partition on the loop device on which our sd.img is mounted (Note : DISK -> /dev/loop18).

For FAT (File Allocation table )  :

```bash
sudo mkfs.vfat -F 16 -n boot ${DISK}p1
```

* mkfs.vfat    -> Command used to create a FAT file system on my block device partition 1.
* -F 16          -> Specifies FAT type -> 16 bit .
* -n boot       -> once the FAT16 file system is created  the it will be labeled with the name **boot** .
* ${DISK}p1 -> identifies the partition to which the file system will be assigned.

Same for the second partition EXT4 (Fouth Extended ):

```bash
sudo mkfs.ext4 -L rootfs ${DISK}p2
```

* mkfs.ext4  -> creating an EXT4 file system on my block device partition 2.
* -L  rootfs    -> Flag set volume label to give name **rootfs** for  created EXT4 file system.
* ${DISK}p2 -> identifies the partition to which the file system will be assigned.
* 

********************************************************************************************************************************************************************** **THE END*********************************************************************************************************************************************************************************************
