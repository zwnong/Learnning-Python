@echo off
title �ֻ�¼��
color 0a
echo recording...
adb shell screenrecord --time-limit 180 /sdcard/record.mp4
pause
echo ��¼���ļ����浽D�̣�����
adb pull /sdcard/record.mp4 D:\%date:~,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%.mp4
pause