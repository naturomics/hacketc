# 分区
目前现存多种系统启动方式，如传统的BIOS方式，及近年来的UEFI方式，除了启动方式外，还涉及了系统分区方案，如MBR方案和GPT方案. 详细介绍可查看[gentoo的安装手册](https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Disks)

现在较新的计算机基本都支持UEFI方式启动，越来越多的人也会选择UEFI + GPT分区的方式安装linux(若选择BIOS + MBR方案，直接参考gentoo的安装手册即可), 然而gentoo的安装手册虽然也介绍了这种方式的安装，但所提供的minimal iso并不支持UEFI方式进入基本的安装环境，也就是进入安装环境后efivars验证失败，进而导致到了安装启动程序如grub时失败. 因此，本小节介绍一种使用UEFI + GPT方案安装gentoo的方法(基本流程与gentoo的安装手册一致，只介绍差异部分).

- 安装介质:
  首先选择支持UEFI方式启动的linux ISO进行刻盘，启动后验证所刻的盘是否在以UEFI方式启动(验证的最好方式是，在终端中运行`efivars`命令，若提示没有这个命令或无任何输出，则说明不支持).
	- Gentoo的minimal installation CD是不支持UEFI方式启动的，所以我们需要选择其他的linux ISO刻盘，我推荐使用[arch linux的minimal installation ISO](https://www.archlinux.org/download/)——根据一些网友的提示，使用gentoo的live CD也可行，但在安装grub时需要复杂的操作，如复制live cd的grub.efi到新系统等，但我认为这种方式不能保证所有人都能安装成功，还增加了安装的难度.因此我更推荐使用arch linux的ISO，这个ISO只是提供一个基本的安装环境，与gentoo 的minimal ISO作用是一样的，不必担心是否熟悉arch.

# 文件系统
- 挂载
  * [fstab config](gentoo-os/etc/fstab)

# 编译内核
如果你想根据你自己的需要编译内核，那么通常我们会关心以下几个方面，让系统既能够定制化，也能够满足我们日常使用的基本需求。
- 声音支持
- USB支持
- SD卡支持
  * Device Drivers $\rightarrow$ MMC/SD/SDIO card support $\rightarrow$ **MMC/SD/SDIO Host Controller Drivers** (select the driver for the card you have)

- 无线驱动支持
