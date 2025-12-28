##########################################################################################
#
# Magisk Module Installer Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=false

##########################################################################################
# Install
##########################################################################################

print_modname() {
  ui_print "*******************************"
  ui_print "        Pixelify Photos        "
  ui_print "*******************************"
}

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  
  ui_print "- Setting permissions"
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/post-fs-data.sh 0 0 0755
  
  ui_print "- Module installed successfully"
  ui_print "- Device: Pixel XL (marlin)"
  ui_print "- Method: sysconfig + property spoofing"
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/post-fs-data.sh 0 0 0755
  set_perm_recursive $MODPATH/system/product/etc/sysconfig 0 0 0755 0644
}
