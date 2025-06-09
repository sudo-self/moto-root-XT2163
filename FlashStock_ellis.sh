#!/bin/bash

# Exit on error
set -e

echo "== Flashing Motorola Ellis XT2163-4 =="

# Flash critical images
fastboot flash preloader preloader.img
fastboot flash lk lk.img
fastboot flash tee tee.img
fastboot flash scp scp.img
fastboot flash sspm sspm.img
fastboot flash spmfw spmfw.img
fastboot flash md1img md1img.img
fastboot flash dtbo dtbo.img
fastboot flash logo logo.img
fastboot flash boot boot.img
fastboot flash vbmeta vbmeta.img
fastboot flash vbmeta_system vbmeta_system.img

# Super erase may fail due to locked permissions - skip if it errors
echo "== Attempting to erase super (may fail if locked) =="
fastboot erase super || echo "Skipping super erase (permission denied)"

# Flash super image sparse chunks
for i in super.img_sparsechunk.*; do
    echo "== Flashing $i =="
    fastboot flash super "$i"
done

# Done
echo "== Flash complete =="
read -p "Reboot device now? (y/n): " yn
if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
    fastboot reboot
else
    echo "You can manually reboot with: fastboot reboot"
fi

