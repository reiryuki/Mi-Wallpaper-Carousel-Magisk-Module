mount -o rw,remount /data
MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug-pfsd.log
set -x

# var
API=`getprop ro.build.version.sdk`
ABI=`getprop ro.product.cpu.abi`

# function
permissive() {
if [ "$SELINUX" == Enforcing ]; then
  if ! setenforce 0; then
    echo 0 > /sys/fs/selinux/enforce
  fi
fi
}
magisk_permissive() {
if [ "$SELINUX" == Enforcing ]; then
  if [ -x "`command -v magiskpolicy`" ]; then
	magiskpolicy --live "permissive *"
  else
	$MODPATH/$ABI/libmagiskpolicy.so --live "permissive *"
  fi
fi
}
sepolicy_sh() {
if [ -f $FILE ]; then
  if [ -x "`command -v magiskpolicy`" ]; then
    magiskpolicy --live --apply $FILE 2>/dev/null
  else
    $MODPATH/$ABI/libmagiskpolicy.so --live --apply $FILE 2>/dev/null
  fi
fi
}

# selinux
SELINUX=`getenforce`
chmod 0755 $MODPATH/*/libmagiskpolicy.so
#1permissive
#2magisk_permissive
#kFILE=$MODPATH/sepolicy.rule
#ksepolicy_sh
FILE=$MODPATH/sepolicy.pfsd
sepolicy_sh

# directory
DIR=/data/system/theme_magic
#chmod 0775 $DIR
#chown oem_9801.oem_9801 $DIR
#chcon u:object_r:theme_data_file:s0 $DIR
chmod -R 0777 $DIR
chown -R 1000.1000 $DIR
chcon -R u:object_r:app_data_file:s0 $DIR

# directory
DIR=/data/system/theme
mkdir -p $DIR/fonts
#chmod 0775 $DIR
#chown oem_9801.oem_9801 $DIR
#chcon u:object_r:theme_data_file:s0 $DIR
chmod -R 0777 $DIR
chown -R 1000.1000 $DIR
chcon -R u:object_r:app_data_file:s0 $DIR

# permission
if [ "$API" -ge 26 ]; then
  DIRS=`find $MODPATH/vendor\
             $MODPATH/system/vendor -type d`
  for DIR in $DIRS; do
    chown 0.2000 $DIR
  done
  if [ -L $MODPATH/system/vendor ]\
  && [ -d $MODPATH/vendor ]; then
    chcon -R u:object_r:vendor_file:s0 $MODPATH/vendor
  else
    chcon -R u:object_r:vendor_file:s0 $MODPATH/system/vendor
  fi
fi

# cleaning
FILE=$MODPATH/cleaner.sh
if [ -f $FILE ]; then
  . $FILE
  mv -f $FILE $FILE.txt
fi










