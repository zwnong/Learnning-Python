@echo off
setlocal EnableDelayedExpansion
title install apks
color 0a
:::: ����adb ��֤��˳������  
adb kill-server  
adb start-server  
adb wait-for-device
set ApkPath=%cd%\apks
cd %ApkPath%
set count = 0
for /R %%s in (*.apk) do (
    ::Ҫʹ������������apk��·������Ȼadb install�﷨����
    set /a count +=1
    echo ���ڰ�װ��!count!��apk:
    echo %%s
    adb install "%%s"
    echo ------------------------------------------------
)
echo ***********��װ���***********
pause

