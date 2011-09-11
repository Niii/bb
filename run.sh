#!/bin/sh

#
# Run the built Openwrt image with the built qemu
#
# Uses the BIOS from qemu, it's far more appropriate for setting up 
# qemu than a hacked Biffboot!

./qemu/i386-softmmu/qemu -bios /tmp/bios.bin  \
	-firmware openwrt/bin/rdc/openwrt-rdc-jffs2-64k-bifferboard.img   \
	-kernel openwrt/bin/rdc/openwrt-rdc.bzImage   \
	-append rootfstype=jffs2   \
	-vga none -nographic \
	-L qemu/pc-bios/optionrom
