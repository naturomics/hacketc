# Network
Before you can operate your network, you should confirm your device is show up, namely the driver for your ethernet controller or wireless card is work well. See [the section of network support in kernel configuration](LinuxBaseSys.md) for details

## Wired network management

## Wireless network management
all the command you need is 'ifconfig', 'iw', 'ip', 'wpa_supplicant' and 'wpa_passphrase'

# Sound

# Power Management and Battery Status

# Printing Support
  - common docs on [gentoo wiki](https://wiki.gentoo.org/wiki/Printing)
  - my printer is 'HP LaserJet Pro MFP m226dn' with these [features](http://hplipopensource.com/hplip-web/models/laserjet/hp_laserjet_pro_mfp_m226dn.html). Firstly, install the [hp printer drivers](http://hplipopensource.com/hplip-web/index.html), on Gentoo linux, just emerge it:
~$ emerge --ask hplip hplip-plugin~
