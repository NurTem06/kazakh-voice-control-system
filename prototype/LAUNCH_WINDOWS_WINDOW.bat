@echo off
setlocal
set "HTML=%~dp0index.html"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" (
  echo Microsoft Edge not found - opening HTML in default browser.
  start "" "%HTML%"
  exit /b 0
)
start "Qazaq Voice" "%EDGE%" --app="file:///%HTML:\=/%" --window-size=1380,860
