@echo off
REM Deploys ONE site folder to production. Usage: deploy-one.cmd video-editor
setlocal
if "%~1"=="" (echo Usage: deploy-one.cmd ^<folder^> & goto :eof)
set V=npx.cmd --yes vercel@50.1.3
set LOG=%~dp0deploy-one-log.txt
echo ==== %date% %time% %1 ==== > "%LOG%"
pushd "%~dp0%~1"
call %V% deploy --prod --yes >> "%LOG%" 2>&1
popd
echo ALL_DONE >> "%LOG%"
type "%LOG%"
