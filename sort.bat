@echo off
::FINAL variables
set PATH=%~dp0
set USER=C:\Users\%USERNAME%\
set DESK=%USER%\Desktop\
set DOCS=%USER%Documents\
set VIDS=%USER%Videos\
set IMGS=%USER%Pictures\
set SONG=%USER%Music\
set ISOS=%DESK%Software-ISOs\
set SCUT=%DESK%Shortcuts\

::sort Text files
if exist "*.*txt" (move "%PATH%*.*txt" "%DOCS%") 
if exist "*.*docx" (move "%PATH%*.*docx" "%DOCS%")
if exist "*.*doc" (move "%PATH%*.*doc" "%DOCS%") 
if exist "*.*pdf" (move "%PATH%*.*pdf" "%DOCS%") 
if exist "*.*xls" (move "%PATH%*.*xls" "%DOCS%") 
if exist "*.*ppt" (move "%PATH%*.*ppt" "%DOCS%") 

::sort Video files
if exist "*.*xls" (move "%PATH%*.*mov" "%VIDS%") 
if exist "*.*ppt" (move "%PATH%*.*mp4" "%VIDS%") 

::sort Audio files
if exist "*.*mp3" (move "%PATH%*.*mp3" "%SONG%") 
if exist "*.*wav" (move "%PATH%*.*wav" "%SONG%") 

::sort Image files
if exist "*.*png" (move "%PATH%*.*png" "%IMGS%") 
if exist "*.*jpg" (move "%PATH%*.*jpg" "%IMGS%")
if exist "*.*jfif" (move "%PATH%*.*jfif" "%IMGS%") 
if exist "*.*xcf" (move "%PATH%*.*xcf" "%IMGS%") 
if exist "*.*gif" (move "%PATH%*.*gif" "%IMGS%") 
if exist "*.*pdn" (move "%PATH%*.*pdn" "%IMGS%") 


::sort Software/ISOs files
if exist "*.*ova" (move "%PATH%*.*ova" "%ISOS%") 
if exist "*.*iso" (move "%PATH%*.*iso" "%ISOS%")
if exist "*.*jar" (move "%PATH%*.*jar" "%ISOS%") 
if exist "*.*exe" (move "%PATH%*.*exe" "%ISOS%") 
if exist "*.*img" (move "%PATH%*.*img" "%ISOS%")


::sort Shortcut files
if exist "*.*lnk" (move "%PATH%*.*lnk" "%SCUT%") 
if exist "*.*htm" (move "%PATH%*.*iso" "%SCUT%")
if exist "*.*url" (move "%PATH%*.*jar" "%SCUT%") 
if exist "*.*pif" (move "%PATH%*.*exe" "%SCUT%") 
if exist "*.*msi" (move "%PATH%*.*img" "%SCUT%")  