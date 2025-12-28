# Pixie - Unlimited Google Photos Storage

Get unlimited original quality storage in Google Photos by making your device look like a Pixel XL.

## What it does
- Gives you unlimited original quality photo and video backup
- Works without Zygisk or LSPosed

## How to install
1. Flash the ZIP file in Magisk Manager
2. Reboot your device
3. Go to Settings → Apps → Google Photos → Storage → Clear data
4. Reboot again
5. Open Google Photos and sign in to your account

## How to check if it works
Open a terminal and run these commands:
```bash
getprop ro.product.model
```
This should show "Pixel XL"

```bash
pm list features | grep NEXUS_PRELOAD
```
This should show the NEXUS_PRELOAD feature

## What you need
- Android 13 or newer
- Magisk 24.0 or newer (or similar root solution)
- Google Photos app installed

## How it works
The module does two things:
1. Adds special feature flags that Google Photos looks for
2. Changes your device properties to make it appear as a Pixel XL to Google's servers

## What files does it modify
- `system/product/etc/sysconfig/pixie.xml` - Adds the special feature flags
- `post-fs-data.sh` - Makes sure the properties are set correctly
