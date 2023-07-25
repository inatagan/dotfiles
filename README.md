# dotfiles
### Setting up config files on clean install
Clone this repo to the home directory so the path is `~/dotfiles`

Navigate to the folder:

    cd dotfiles

Give execute permission to the init script:

    chmod +x init.sh

Run the init script to create the correct symlinks:

    ./init.sh

Run any additional scripts you may want or install wanted software.

---
# *To Do Things*
### bluetooth
    sudo apt install bluez-* pulseaudio-module-bluetooth blueman

### turn off system beep
    sudo echo "blacklist pcspkr" >>/etc/modprobe.d/blacklist.conf

### create XORG intel drivers config file, do these to remove screen tearing
    sudo touch /etc/X11/xorg.conf.d/20-intel.conf
### add these to the file
    Section "Device"
        Identifier  "Intel Graphics"
        Driver      "intel"
        Option      "AccelMethod"     "sna"
        Option      "TearFree"        "true"
        Option      "SwapbuffersWait" "true"
        Option      "DRI"             "2"
    EndSection

###

### Install and configure redshift

### Restore firefox profiles
Root directory: `/home/ina/.mozilla/firefox/kqziciaf.default-release`

Local directory: `/home/ina/.cache/mozilla/firefox/kqziciaf.default-release`

### KVM virtualization on debian
#sudo apt install qemu-system libvirt-clients libvirt-daemon-system
`sudo apt install qemu-kvm libvirt-clients libvirt-daemon libvirt-daemon-system bridge-utils virtinst virt-manager -yy`
### setup
    sudo systemctl enable libvirtd

    sudo systemctl start libvirtd
### add user
    sudo adduser$USER libvirt

    sudo adduser$USER libvirt-qemu

### GRUB colors
Normal font : light-red

Normal background : transparent

Highlighted font : light-magenta

Highlighted background : transparent

Font : none

### BTRFS - TIMESHIFT - GRUB-BTRFS
--Partition table
    gpt
    1 - efi
    2 - /boot
    3 - encrypted volume/lvm/btrfs root
 
Before system install
cntrl + alt + F2

    >df
    
    >unmount /target/boot/efi/
    
    >unmount /target/boot/
    
    >unmount /target/
    
    
    >mount dev/mapper/FIRELINK_VG0 /mnt
    .
    .
    .
    .
    .

W I P

    }ina@firelink:~$ cat /etc/timeshift/timeshift.json
    {
    "backup_device_uuid" : "e24cbd7c-6246-4c48-9ccd-480f23b00eb7",
    "parent_device_uuid" : "sZ20ok-MRTz-Kdon-4nxy-fsjb-gxnz-7Tlhe8",
    "do_first_run" : "false",
    "btrfs_mode" : "false",
    "include_btrfs_home_for_backup" : "false",
    "include_btrfs_home_for_restore" : "false",
    "stop_cron_emails" : "true",
    "schedule_monthly" : "false",
    "schedule_weekly" : "false",
    "schedule_daily" : "false",
    "schedule_hourly" : "false",
    "schedule_boot" : "false",
    "count_monthly" : "2",
    "count_weekly" : "3",
    "count_daily" : "5",
    "count_hourly" : "6",
    "count_boot" : "5",
    "date_format" : "%Y-%m-%d %H:%M:%S",
    "exclude" : [
        "+ /root/**",
        "+ /home/ina/.**",
        "/home/ina/.fonts/***",
        "/home/ina/.themes/***",
        "/home/ina/.vscode/***"
    ],
    "exclude-apps" : []
    }ina@firelink:~$ 


