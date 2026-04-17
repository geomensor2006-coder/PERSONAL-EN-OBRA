@echo off
REM Este archivo instala y ejecuta la aplicación automáticamente

echo =====================================
echo Iniciando instalación...
echo =====================================

REM Verificar si Node.js está instalado
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js no está instalado
    echo Por favor descarga Node.js desde: https://nodejs.org/
    pause
    exit /b 1
)

echo ✓ Node.js detectado

REM Instalar dependencias del backend
echo.
echo Instalando dependencias del backend...
cd backend
call npm install
if errorlevel 1 (
    echo ERROR: No se pudieron instalar las dependencias del backend
    pause
    exit /b 1
)

echo ✓ Backend instalado

REM Instalar dependencias del frontend
echo.
echo Instalando dependencias del frontend...
cd ../frontend
call npm install
if errorlevel 1 (
    echo ERROR: No se pudieron instalar las dependencias del frontend
    pause
    exit /b 1
)

echo ✓ Frontend instalado
echo.
echo =====================================
echo ✓ ¡INSTALACIÓN COMPLETADA!
echo =====================================
echo.
echo Ahora ejecuta: run.bat
pause