@echo off
rem ============================================================================
rem  Update this game to the latest version (one double-click).
rem  It downloads yomi-update.zip from the project's latest GitHub Release,
rem  extracts it into this folder, and removes files listed as deleted.
rem  NOTE: keep this file PURE ASCII.
rem ============================================================================
chcp 65001 >nul
setlocal
cd /d "%~dp0"
set "URL=https://github.com/Yongming06/yomi-release/releases/latest/download/yomi-update.zip"
set "TMP=%TEMP%\yomi-update.zip"
echo [update] downloading latest update ...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ProgressPreference='SilentlyContinue'; try { Invoke-WebRequest -Uri '%URL%' -OutFile '%TMP%' -UseBasicParsing } catch { Write-Host 'download failed:' $_; exit 1 }"
if not exist "%TMP%" ( echo [update] download failed & pause & exit /b 1 )
echo [update] extracting ...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Path '%TMP%' -DestinationPath '%~dp0' -Force"
echo [update] done. Version info:
if exist "resources\app\www\_yomi_version.json" type "resources\app\www\_yomi_version.json"
del /q "%TMP%" 2>nul
echo.
echo [update] finished - you can start the game now.
pause
