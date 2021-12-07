# dotfiles
### Setting up config files on clean install
Clone this repo to the home directory so the path is `~/dotfiles`

Navigate to the folder:

`cd dotfiles`

Give execute permission to the init script:

`chmod +x init.sh`

Run the init script to create the correct symlinks:

`./init.sh`

Run any additional scripts you may want or install wanted software.

### bluetooth
`sudo apt install bluez-* pulseaudio-module-bluetooth blueman`

### turn off system beep
`sudo echo "blacklist pcspkr" >>/etc/modprobe.d/blacklist.conf`

### create XORG intel drivers config file, do these to remove screen tearing
`sudo touch /etc/X11/xorg.conf.d/20-intel.conf`
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

### KVM virtualization on debian
#sudo apt install qemu-system libvirt-clients libvirt-daemon-system
`sudo apt install qemu-kvm libvirt-clients libvirt-daemon libvirt-daemon-system bridge-utils virtinst virt-manager -yy`
### setup
`sudo systemctl enable libvirtd`

`sudo systemctl start libvirtd`
### add user
    sudo adduser$USER libvirt

    sudo adduser$USER libvirt-qemu

### GRUB colors
Normal font : light-red

Normal background : transparent

Highlighted font : light-magenta

Highlighted background : transparent

Font : none