@echo off
REM Deploys the 3 niche sites to Vercel (production) and attaches their subdomains.
REM Output also goes to deploy-log.txt so Claude can read it.
setlocal
set V=npx.cmd --yes vercel@50.1.3
set LOG=%~dp0deploy-log.txt
echo ==== %date% %time% ==== > "%LOG%"
call %V% whoami >> "%LOG%" 2>&1

call :one smm ryan-smm smm.decenaryan.site
call :one video-editor ryan-video-editor video.decenaryan.site
call :one ai-automation ryan-ai-automation ai.decenaryan.site

echo. >> "%LOG%"
echo ALL_DONE >> "%LOG%"
type "%LOG%"
goto :eof

:one
echo. >> "%LOG%"
echo ---- %1 ---- >> "%LOG%"
pushd "%~dp0%1"
call %V% link --yes --project %2 >> "%LOG%" 2>&1
call %V% deploy --prod --yes >> "%LOG%" 2>&1
popd
goto :eof
