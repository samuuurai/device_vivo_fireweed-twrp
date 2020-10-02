TWRP Device Tree for Vivo Y31L (fireweed)
==========================================

The Vivo Y31L (codenamed _"fireweed"_) is a low-end, low-range smartphone from Vivo.
It was released in March 2016.

| Basic                   | Spec Sheet                                                                                                                     |
| -----------------------:|:------------------------------------------------------------------------------------------------------------------------------ |
| CPU                     | Quad-core                                                                                                                      |
| Chipset                 | Snapdragon 410 (MSM8916)                                                                                                       |
| GPU                     | Adreno 306                                                                                                                     |
| Memory                  | 1 GB RAM                                                                                                                       |
| Shipped Android Version | 5.1                                                                                                                            |
| Storage                 | 16 GB                                                                                                                          |
| Battery                 | Removable Li-Po 2200 mAh battery                                                                                               |
| Display                 | 960x540 Pixels, 16:9 ratio (~240 PPI density)                                                                                  |
| Camera (Back)           | 8 MP                                                                                                                           |
| Camera (Front)          | 5 MP                                                                                                                           |

## Device picture
![fireweed](https://drop.ndtv.com/TECH/product_database/images/325201625728PM_635_vivo_y31l.jpeg?downsize=*:420&output-quality=80)

## Build instructions

```
# Compiling
$ export ALLOW_MISSING_DEPENDENCIES=true
$ . build/envsetup.sh
$ lunch omni_fireweed-eng
$ make -jx recoveryimage //replace x in -jx with number of cores you want to allot for compilation

```
**Copyright 2019 The Android Open Source Project**

