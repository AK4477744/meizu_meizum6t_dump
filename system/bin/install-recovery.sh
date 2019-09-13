#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:20544384:9b5b95b94401c51355a582173551a528cb770da6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10638208:e0cd4949116118cd98369178b27d0bafd2a25efc EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 9b5b95b94401c51355a582173551a528cb770da6 20544384 e0cd4949116118cd98369178b27d0bafd2a25efc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
