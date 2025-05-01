# linux-notes
Personal note for my Linux setup

## Auto mount Windows drive on Linux
1. Open `/etc/fstab`
2. Add the following line `UUID=<uuid-of-ntfs-file-system>   /mnt/ntfs    ntfs    defaults   0   2`

> use `blkid` to get the UUID of the NTFS file system

## Enable NVIDIA dynamic boost
1. Copy `/usr/share/doc/nvidia-driver-550/nvidia-dbus.conf` to `/etc/dbus-1/system.d/`
2. Copy `/usr/share/doc/nvidia-kernel-common-550/nvidia-powerd.service` to `/etc/systemd/system/`
3. Run `sudo systemctl enable nvidia-powerd.service`
4. Run `sudo systemctl start nvidia-powerd.service`