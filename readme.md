# Pixelify Photos - Unlimited Storage

Magisk module that unlocks unlimited original quality storage in Google Photos by spoofing as Pixel XL.

## Features
- Unlimited original quality photo/video backup
- No Zygisk/LSPosed required

## How It Works
Combines two methods:
1. **Sysconfig feature flags** - Adds `NEXUS_PRELOAD` feature that Google Photos checks
2. **Device property spoofing** - Makes device appear as Pixel XL to Google servers

## Installation
1. Flash ZIP in Magisk Manager
2. Reboot
3. Clear Google Photos data (Settings → Apps → Google Photos → Storage → Clear data)
4. Reboot again
5. Open Google Photos and sign in

## Verification
Check if it worked:
```bash
# Should show "Pixel XL"
getprop ro.product.model

# Should show NEXUS_PRELOAD feature
pm list features | grep NEXUS_PRELOAD
```

In Google Photos: Settings → Backup → Should show "Original quality"

## Requirements
- Android 13+
- Magisk 24.0+ or Similar
- Google Photos installed

## Files
- `system/product/etc/sysconfig/pixelify.xml` - Feature flags
- `system.prop` - Pixel XL properties
- `post-fs-data.sh` - Runtime property spoofing

## Notes
- Only affects Google Photos, not other apps
- Previously uploaded photos keep their original quality setting
- May break if Google changes server-side validation
