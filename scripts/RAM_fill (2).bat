@echo off
REM : �ҵ�ʣ��Ŀ����õ�RAM
echo Ŀǰʣ����ڴ�Ϊ(KB):
adb shell "cat /proc/meminfo | grep MemAvailable"
ping -n 3 127.1>nul
REM :�� mem_occupy �ļ�push ��binĿ¼��
adb push mem_occupy /system/bin/
ping -n 2 127.1>nul
REM :��mem_occupy��������Ȩ��
adb shell chmod 777 /system/bin/mem_occupy
set /p times=      ������RAM�Ĵ�С(M)��
echo ���Թ���������γ�USB�ߣ�������������ʹ��Ctrl+C��ֹͣ���У�
adb shell mem_occupy %times%
pause