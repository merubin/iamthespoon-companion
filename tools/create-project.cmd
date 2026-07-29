@echo off
REM ============================================================
REM I AM THE SPOON(TM) Companion App
REM Project Structure Creator
REM Version 0.0.1
REM
REM Assumes current directory is C:\
REM ============================================================

set REPO=C:\Users\Michael Rubin\OneDrive\Documents\GitHub\iamthespoon-companion

echo.
echo ============================================================
echo Creating I AM THE SPOON Companion App directory structure
echo ============================================================
echo.

if not exist "%REPO%" (
    echo ERROR:
    echo Repository not found:
    echo %REPO%
    pause
    exit /b 1
)

cd /d "%REPO%"

echo Creating folders...

mkdir assets 2>nul
mkdir assets\images 2>nul
mkdir assets\icons 2>nul
mkdir assets\sounds 2>nul

mkdir css 2>nul
mkdir docs 2>nul
mkdir js 2>nul
mkdir tools 2>nul

echo.

echo Creating starter files...

if not exist index.html type nul > index.html
if not exist css\styles.css type nul > css\styles.css
if not exist js\app.js type nul > js\app.js
if not exist CHANGELOG.md type nul > CHANGELOG.md
if not exist PROJECT_STATUS.md type nul > PROJECT_STATUS.md

echo.
echo ============================================================
echo Project structure created successfully.
echo ============================================================
echo.

dir

echo.
pause