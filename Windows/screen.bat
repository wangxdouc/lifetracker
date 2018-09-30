@echo off
title screen
if not exist .\photos md .\photos 
set "保存路径=.\photos"
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin
:start
set time_hh=%time:~0,2% 
if /i %time_hh% LSS 10 (set time_hh=0%time:~1,1%) 
set filename=%date:~,4%%date:~5,2%%date:~8,2%_%time_hh%%time:~3,2%%time:~6,2% 
nircmd.exe savescreenshot "%保存路径%\screenshot_%filename%.png" 0 0 1366 768
choice /t 900 /d y /n >nul
goto start