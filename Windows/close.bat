@echo off
title close
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin

set a=screen
set b=close
taskkill /f /fi "WINDOWTITLE eq %a%"
taskkill /f /fi "WINDOWTITLE eq %b%"