@echo off
del ok.txt
del cop.bat
echo msgbox("hack done!")>done.vbs
echo @echo off>cop.bat
echo set asa=0 >>cop.bat
echo :loop>>cop.bat
echo if /i %%asa%%==1000 goto next>>cop.bat
echo set /a asa=%%asa%%+1>>cop.bat
echo echo %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%%>>cop.bat
echo goto loop>>cop.bat
echo :next>>cop.bat
echo echo ok^>ok.txt >>cop.bat
color 0e
set as=0
:loop
    if /i %as%==1000 goto next
    set /a as=%as%+1
    echo %random% %random% %random% %random% %random% %random% %random%
        goto loop
:next
cls
echo copying files
start cop.bat
:loop1
    if EXIST ok.txt goto next1
        goto loop1
:next1
start done.vbs
@timeout 1
taskkill -im wscript.exe
@timeout 1
taskkill -im cmd.exe