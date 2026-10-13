@echo off
setlocal EnableExtensions DisableDelayedExpansion
title AM-DOS 6.56 Compiled Development Image
set "ROOT=%~dp0"
where powershell.exe >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Windows PowerShell was not found.
  pause
  exit /b 1
)
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%ROOT%LAUNCH-AM-DOS.ps1" %*
set "RESULT=%ERRORLEVEL%"
if not "%RESULT%"=="0" (
  echo.
  echo [AM-DOS] Launch failed. See the error above or the per-run logs.
  pause
)
exit /b %RESULT%
