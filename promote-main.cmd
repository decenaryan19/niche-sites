@echo off
REM Makes the latest main-site deployment the live one on decenaryan.site.
setlocal
set V=npx.cmd --yes vercel@50.1.3
set LOG=%~dp0promote-main-log.txt
echo ==== %date% %time% ==== > "%LOG%"
pushd "C:\Users\yangz\Documents\GitHub\myWebsite"
call %V% promote https://my-website-k5dihbqtt-bbbbbbgggu57567.vercel.app --yes >> "%LOG%" 2>&1
popd
echo ALL_DONE >> "%LOG%"
type "%LOG%"
