# Mi Wallpaper Carousel Magisk Module

## DISCLAIMER
- Miui apps are owned by Xiaomi™.
- The MIT license specified here is for the Magisk Module only, not for Miui apps.

## Descriptions
Wallpaper app by Xiaomi Inc. ported and integrated as a Magisk Module for all supported and rooted devices with Magisk

## Sources
- https://apkmirror.com com.mfashiongallery.emag & com.miui.miwallpaper by Xiaomi Inc.
- libmagiskpolicy.so: Magisk (stable) 30.7 (30700)

## Changelog

v0.6
- Prepare /storage/emulated/"$UID"/Android/data/$PKG/files directories
- Update libmagiskpolicy.so from Magisk (stable) 30.7 (30700)
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/

v0.5-R
- Fix script bug

v0.5
- Fix architecture detection in some weird ROMs
- Add Action button to clear app caches
- Fix bug in uninstall.sh

v0.4
- Fix manual set wallpaper on lockscreen
- Fix status bar visibility at dialog and while battery saver is on

v0.3
- Fix conflict with modules_update while installing via recovery if Magisk installed
- Move mkdir /data/system/theme & /data/system/theme_magic to Miui Core Magisk Module

v0.2
- Fix manual set wallpaper on homescreen
- Fix set as slideshow wallpaper feature in Miui Gallery

v0.1
- Initial release

## Screenshots
https://t.me/androidryukimodsdiscussions/233175

## Requirements
- NOT in Miui ROM
- Android 5 (SDK 21) and up
- Magisk or Kitsune Mask or KernelSU or Apatch installed
- Miui Core Magisk Module installed

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs or https://github.com/KernelSU-Modules-Repo/magic_mount_rs or https://github.com/KernelSU-Modules-Repo/hybrid_mount or https://github.com/maxsteeel/nomount first depending on ROM compatibility
- Install Miui Core Magisk Module first: https://github.com/reiryuki/Miui-Core-Magisk-Module
- Install this module https://devuploads.com/yp7vry0qy014 via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- Go to app info of Mi Wallpaper Carousel and allow the network access
- If pictures does not show up in the app, then you need to use VPN (because your network provider is blocking the source link)
- To use Mi Wallpaper Carousel slideshow, long tap home screen, tap wallpaper image, tap Live Wallpaper Picker, tap Mi Wallpaper Carousel, set wallpaper both first, then enable slideshow via Mi Wallpaper Carousel app. (Just one click. If you disable and re-enable it again, it will not work and you need to repeat the steps.)

## Optionals
- https://t.me/ryukinotes/42
- Global: https://t.me/ryukinotes/35

## Troubleshootings
- https://t.me/ryukinotes/19
- Global: https://t.me/ryukinotes/34

## Known Issue
If you are activating "Every time device unlocks" and activating "Lock after screen timeout" feature in LineageOS based ROMs, then the wallpaper slideshow will not be changed until the timeout occurs. You can lockdown the lockscreen and turn off display first instead.

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


