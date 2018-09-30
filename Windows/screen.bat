@echo off
if not exist .\photos md .\photos 
set "保存路径=.\photos"
set "间隔=900" 秒
set "循环=1440" 分钟
set /a wait=间隔*1000, times=循环*60*1000
set time_hh=%time:~0,2% 
if /i %time_hh% LSS 10 (set time_hh=0%time:~1,1%) 
set filename=%date:~,4%%date:~5,2%%date:~8,2%_%time_hh%%time:~3,2%%time:~6,2% 
nircmd loop %times% %wait% savescreenshot "%保存路径%\screenshot_%filename%_NO.~$loopcount$.jpg"