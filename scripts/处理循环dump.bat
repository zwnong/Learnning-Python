@echo off
color 0a
fastboot erase mdmddr
fastboot erase mdm1m9kefs1
fastboot erase mdm1m9kefs2
fastboot erase mdm1m9kefs3
fastboot reboot
echo -----------������modem�����������------------------------
echo �ȴ��豸����(����豸�������������������һ��)...
timeout 180
adb shell setprop sys.usb.config diag,diag_mdm,qdss,qdss_mdm,serial_cdev,dpl,rmnet,adb
adb wait-for-device
adb devices
adb pull /data/vendor/tombstones/SDX55M
echo -------------------------���-----------------------------
pause

