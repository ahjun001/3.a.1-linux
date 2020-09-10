#!/bin/bash

# sudo woeusb --device image.iso /dev/sdb --tgt-fs NTFS --verbose
# SOURCE"/home/perubu/Downloads/Windows 7 SP1 Ultimate 6in1 OEM ESD en-US JULY 2020 {Gen2}"
# export SOURCE=./WIN7.AIO.ENU.NOV2019.iso
export SOURCE="/home/perubu/Desktop/Windows 7 SP1 X86 X64 AIO 22in1 ESD en-US NOV 2019 {Gen2}/WIN7.AIO.ENU.NOV2019.iso"
export TARGET=/dev/sda
sudo umount ${TARGET}1 ${TARGET}2
sudo umount "${SOURCE}"
woeusb --device "${SOURCE}" ${TARGET} --tgt-fs NTFS --verbose
