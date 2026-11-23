@echo off
REM Attaches each subdomain to its Vercel project and prints the DNS records Vercel wants.
setlocal
set V=npx.cmd --yes vercel@50.1.3
set LOG=%~dp0domains-log.txt
echo ==== %date% %time% ==== > "%LOG%"
call :one smm smm.decenaryan.site
call :one video-editor video.decenaryan.site
call :one ai-automation ai.decenaryan.site
echo. >> "%LOG%"
call %V% domains inspect decenaryan.site >> "%LOG%" 2>&1
echo ALL_DONE >> "%LOG%"
type "%LOG%"
goto :eof

:one
echo. >> "%LOG%"
echo ---- %2 ---- >> "%LOG%"
pushd "%~dp0%1"
call %V% domains add %2 >> "%LOG%" 2>&1
popd
goto :eof
