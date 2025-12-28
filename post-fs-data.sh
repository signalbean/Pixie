#!/system/bin/sh
MODDIR=${0%/*}

# Spoof device as Pixel XL globally
resetprop ro.product.brand Google
resetprop ro.product.manufacturer Google
resetprop ro.product.model "Pixel XL"
resetprop ro.product.device marlin
resetprop ro.product.name marlin
resetprop ro.build.product marlin
resetprop ro.build.fingerprint google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys

# Spoof for Google Photos specifically
resetprop ro.opa.eligible_device true
