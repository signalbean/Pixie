# Pixie

Magisk/APatch module that provides Google Photos backup by spoofing device as Pixel XL.

## Features

- Global Pixel XL device spoofing
- Unlocks unlimited Google Photos backup

## Installation

1. Download zip file
2. Flash via Magisk/APatch
3. Reboot
4. Open Google Photos - should show "unlimited backup"

## How it works

- `system.prop` - Spoofs device identity to Pixel XL
- `sysconfig/pixie.xml` - Enables Google Photos feature flags

## Compatibility

- Requires Magisk/APatch
- Works on Android 8+
- Global device spoofing (affects all apps)
