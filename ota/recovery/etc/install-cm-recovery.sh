#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8988672 22bfe77f8315be3f496b21ec3061743530c82841 6379520 dc64db35190b84fce3938ff8640d6130478b7260
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8988672:22bfe77f8315be3f496b21ec3061743530c82841; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6379520:dc64db35190b84fce3938ff8640d6130478b7260 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 22bfe77f8315be3f496b21ec3061743530c82841 8988672 dc64db35190b84fce3938ff8640d6130478b7260:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
