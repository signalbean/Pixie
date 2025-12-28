PROPFILE=true

print_modname() {
  ui_print "*********************"
  ui_print "        Pixie        "
  ui_print "*********************"
}

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "- Module installed successfully"
}

set_permissions() {
  set_perm_recursive $MODPATH/system 0 0 0755 0644
}
