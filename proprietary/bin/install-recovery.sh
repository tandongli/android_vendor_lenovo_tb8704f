#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25417004:1b02f4ac6c0280de85e0c78d23d35bca3c1ac7f4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23127336:d88c2d8703fde296849a17988599676a90590680 EMMC:/dev/block/bootdevice/by-name/recovery 1b02f4ac6c0280de85e0c78d23d35bca3c1ac7f4 25417004 d88c2d8703fde296849a17988599676a90590680:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
