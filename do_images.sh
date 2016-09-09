#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
  echo "Please specify a container destination, e.g.:"
  echo "    ${0} /tmp"
  exit 1
fi

# Toolchain Compiling
ImageName=CrossTool
ImageNameExt=${ImageName}.dmg
diskutil umount force /Volumes/${ImageName} && true
rm -f ${1}/${ImageNameExt} && true

hdiutil create ${1}/${ImageNameExt} -volname ${ImageName} -size 500m -fs HFSX
hdiutil mount ${1}/${ImageNameExt}

# Toolchain container (Pi Zero)
ImageName=CrossTool_armv6_rpi
ImageNameExt=${ImageName}.dmg
diskutil umount force /Volumes/${ImageName} && true
rm -f ${1}/${ImageNameExt} && true

hdiutil create ${1}/${ImageNameExt} -volname ${ImageName} -size 500m -fs HFSX
hdiutil mount ${1}/${ImageNameExt}

# Toolchain container (Pi 3)
ImageName=CrossTool_armv8_rpi3
ImageNameExt=${ImageName}.dmg
diskutil umount force /Volumes/${ImageName} && true
rm -f ${1}/${ImageNameExt} && true

hdiutil create ${1}/${ImageNameExt} -volname ${ImageName} -size 500m -fs HFSX
# -type SPARSE
hdiutil mount ${1}/${ImageNameExt}
