@echo off
set USER=C:\Users\%USERNAME%\
set DESK=%USER%Desktop\
set ISOS=%DESK%Software-ISOs\
set SCUT=%DESK%Shortcuts\
set ZIPS=%DESK%Archives\

set PATH=%~dp0sort.bat
if exist "%ISOS%" (break) else (mkdir %ISOS%)
if exist "%SCUT%" (break) else (mkdir %SCUT%)
if exist "%ZIPS%" (break) else (mkdir %ZIPS%)

echo Copying sort.bat to default Windows Libraries
copy %PATH% %USER%Downloads\. /Y 
copy %PATH% %USER%Documents\. /Y 
copy %PATH% %USER%Videos\. /Y 
copy %PATH% %USER%Pictures\. /Y 
copy %PATH% %USER%Music\. /Y 
echo=

echo Sorting %DESK%
call %DESK%sort.bat
echo Sorting %USER%Downloads
call %USER%Downloads\sort.bat
echo Sorting %USER%Documents
call %USER%Documents\sort.bat
echo Sorting %USER%Videos
call %USER%Videos\sort.bat
echo Sorting %USER%Pictures
call %USER%Pictures\sort.bat
echo Sorting %USER%Music
call %USER%Music\sort.bat
echo=

rmdir /s /q %systemdrive%\$Recycle.bin
pause


