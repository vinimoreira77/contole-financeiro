@echo off
title Deploy Controle Financeiro
cd /d "%~dp0.."
set "FIREBASE_EXE=C:\Users\vmoreira\AppData\Local\Microsoft\WinGet\Packages\Google.FirebaseCLI_Microsoft.Winget.Source_8wekyb3d8bbwe\firebase.exe"

echo =======================================================
echo          CONTROLE FINANCEIRO - DEPLOY NO FIREBASE
echo =======================================================
echo.
echo 1. Autenticando no Firebase...
"%FIREBASE_EXE%" login
if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no login do Firebase.
    pause
    exit /b %errorlevel%
)

echo.
echo 2. Executando Deploy no Firebase Hosting...
"%FIREBASE_EXE%" deploy --only hosting
echo.
if %errorlevel% equ 0 (
    echo =======================================================
    echo    DEPLOY CONCLUIDO COM SUCESSO!
    echo    Acesse: https://controle-financeiro-8839b.web.app
    echo =======================================================
) else (
    echo [ERRO] Ocorreu um problema durante o deploy.
)
echo.
pause
