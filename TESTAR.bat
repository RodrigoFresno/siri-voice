@echo off
title Liquid Glass Voice Lab - Preview local
cd /d "%~dp0"
echo.
echo  LIQUID GLASS VOICE LAB
echo  Abrindo a previa local...
echo.
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000
  py -m http.server 8000
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000
  python -m http.server 8000
  goto :eof
)
echo Python nao foi encontrado neste computador.
echo Para testar, instale Python ou publique a pasta no GitHub Pages.
pause
