# linux-notes
Personal note for my Linux setup

## Table of contents
- [Auto mount Windows drive on Linux](#auto-mount-windows-drive-on-linux)
- [Enable NVIDIA dynamic boost](#enable-nvidia-dynamic-boost)
- [Small cursor on flatpak apps](#small-cursor-on-flatpak-apps)
- [Fix WPS crash](#fix-wps-crash)
- [Fix WPS PDF](#fix-wps-pdf)

## Auto mount Windows drive on Linux
1. Open `/etc/fstab`
2. Add the following line `UUID=<uuid-of-ntfs-file-system>   /mnt/ntfs    ntfs    defaults   0   2`

> use `blkid` to get the UUID of the NTFS file system

## Enable NVIDIA dynamic boost
1. Copy `/usr/share/doc/nvidia-driver-550/nvidia-dbus.conf` to `/etc/dbus-1/system.d/`
2. Copy `/usr/share/doc/nvidia-kernel-common-550/nvidia-powerd.service` to `/etc/systemd/system/`
3. Run `sudo systemctl enable nvidia-powerd.service`
4. Run `sudo systemctl start nvidia-powerd.service`

## Small cursor on flatpak apps
1. Install flatseal (`flatpak install flatseal`)
2. Inside flatseal head to `All Applications` > `File System` > `Other Files` then add the following directories:
    - `/usr/share/icons`
    - `/usr/share/fonts`
    - `/usr/share/themes`
    - `~/.icons`
    - `~/.fonts`
    - `~/.themes`
3. Restart the flatpak app

## Fix WPS crash
1. Run `sudo mv /opt/kingsoft/wps-office/office6/wpscloudsvr /opt/kingsoft/wps-office/office6/backup_wpscloudsvr`

## Fix WPS PDF
1. Open `https://archive.ubuntu.com/ubuntu/pool/main/t/tiff/`
2. Download and install `libtiff5_4.3.0-6_amd64.deb`

> Additionally you can directly download the file [here](https://archive.ubuntu.com/ubuntu/pool/main/t/tiff/libtiff5_4.3.0-6_amd64.deb)