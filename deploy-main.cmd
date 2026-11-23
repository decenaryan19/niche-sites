@echo off
REM Deploys the main site (Documents\GitHub\myWebsite) to Vercel project "my-website" and makes it live on decenaryan.site.
setlocal
set V=npx.cmd --yes vercel@50.1.3
set LOG=%~dp0deploy-main-log.txt
set URLFILE=%~dp0deploy-main-url.txt
echo ==== %date% %time% ==== > "%LOG%"
pushd "C:\Users\yangz\Documents\GitHub\myWebsite"
call %V% deploy --prod --yes > "%URLFILE%" 2>> "%LOG%"
set /p DURL=<"%URLFILE%"
echo Deployed: %DURL% >> "%LOG%"
call %V% promote %DURL% --yes >> "%LOG%" 2>&1
popd
echo ALL_DONE >> "%LOG%"
type "%LOG%"
