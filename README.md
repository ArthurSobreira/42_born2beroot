<div align="center"><h1>Born2beroot [125 / 100]</h1></div>

<div align="center">
   <a href="https://github.com/ArthurSobreira/42_libft" target="_blank">
      <img height=170 src="https://github.com/byaliego/42-project-badges/raw/main/badges/born2berootm.png" hspace = "10">
   </a>
</div>

## Summary
> <i>The fourth project on the 42sp fundamentals track, <strong>Born2beroot</strong>, is based on the creation and configuration</i>
> <i>of a Virtual Machine (with VirtualBox). This project will teach us topics like virtualization, LVM and partitioning schemes, </i>
> <i>command-line software, protocols such as SSH, an introduction to Firewall with UFW, the importance of securing a system with sudo, password policies, and more.</i>

<br>

## Partition Scheme

```
NAME                    MAJ:MIN RM  SIZE RO TYPE  MOUNTPOINTS
sda                       8:0    0   30G  0 disk
├─sda1                    8:1    0  476M  0 part  /boot
├─sda2                    8:2    0    1K  0 part
└─sda5                    8:5    0 29.5G  0 part
  └─sda5_crypt          254:0    0 29.5G  0 crypt
    ├─LVMGroup-root     254:1    0  9.3G  0 lvm   /
    ├─LVMGroup-swap     254:2    0  2.1G  0 lvm   [SWAP]
    ├─LVMGroup-home     254:3    0  4.7G  0 lvm   /home
    ├─LVMGroup-var      254:4    0  2.8G  0 lvm   /var
    ├─LVMGroup-srv      254:5    0  2.8G  0 lvm   /srv
    ├─LVMGroup-tmp      254:6    0  2.8G  0 lvm   /tmp
    └─LVMGroup-var--log 254:7    0  3.7G  0 lvm   /var/log
sr0                      11:0    1 1024M  0 rom
```
