@echo off
echo=>1.txt

@echo �鿴�̼��汾��inside.id
@echo off
adb shell getprop ro.build.inside.id

echo.
@echo �鿴�̼��汾��mask.id���̼���׺����������stable��daily��_I��
@echo off 
adb shell getprop ro.build.mask.id 


echo.
@echo ��������
@echo off 
adb shell getprop ro.meizu.hardware.version

echo.
@echo �鿴��ȫ��������
@echo off 
adb shell getprop ro.build.version.security_patch

echo.
@echo �鿴�ֻ��ͺ�
@echo off 
adb shell getprop ro.meizu.product.model

echo.
@echo �鿴kernel�ں˰汾��
@echo off 
adb shell cat /proc/version

echo.
@echo �鿴flyme�汾��
@echo off 
adb shell getprop ro.build.display.id


echo.
@echo �鿴�ֻ����кţ�SN��
@echo off 
adb shell getprop ro.serialno

echo.
@echo �鿴�ֻ�IMEI��
@echo off 
adb shell getprop ril.gsm.imei

echo.
@echo �鿴�ֻ�MEID��
@echo off 
adb shell getprop ril.cdma.meid

echo.
@echo �鿴GSM�����汾
@echo off 
adb shell getprop gsm.version.baseband

echo.
@echo �鿴�ֻ��汾����ͨ�����ƶ�
@echo off 
adb shell cat /proc/lk_info/sw_version

echo.
@echo �鿴�ֻ��Ƿ����
@echo off 
adb shell cat proc/lk_info/sec


@echo off
��ȡ�豸��Ϣ/all>1.txt
pause