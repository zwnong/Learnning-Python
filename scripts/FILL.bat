
@echo off
echo adb wait-for-deveces
adb remount
echo ѡ���������:
:MAIN
echo ------------------------------
echo (1)filled ROM
ECHO (2)filled RAM  #��root
echo ------------------------------
set /p UserSelection="������ѡ��(1/2):"
if "%UserSelection%" == "1" (goto ROM
        )else(
		    if "%UserSelection%" == "2"(goto RAM
		        )else(
			    echo �������������������룡
		        goto MAIN
		    )
		)
:ROM
echo �ֻ�ʣ���ڴ�Ϊ(Avail)��
adb shell df -h /data/media
set FilePath=/sdcard/TempFolder/
set /p FileSize=��ָ���ļ���С(M:):
set /p NumberOfFiles=�����봴�����ļ�����:
set a=0
if not exist %FilePath% adb shell mkdir %FilePath%
:begin
set /a a+=1
echo ���ڴ����У����Ժ�...
adb shell dd if=/dev/zero of=%FilePath%%FileName%%a% bs=1048576 count=%FileSize%
if %a% == %NumberOfFiles% goto end
goto begin
:end
echo ---------------------------------------------
echo �ļ��Ѿ��� %FilePath% �������
echo ---------------------------------------------
pause
goto exist

:RAM
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
goto exist
