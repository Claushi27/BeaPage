@echo off
echo ========================================
echo  CONFIGURAR GIT - PASO 1
echo ========================================
echo.
echo Ingresa tu NOMBRE COMPLETO:
set /p username="Nombre: "

echo.
echo Ingresa tu EMAIL (el mismo de GitHub):
set /p useremail="Email: "

echo.
echo Configurando Git...
git config --global user.name "%username%"
git config --global user.email "%useremail%"

echo.
echo ========================================
echo  CONFIGURACION COMPLETA!
echo ========================================
echo.
echo Git configurado con:
echo   Nombre: %username%
echo   Email: %useremail%
echo.
echo Ahora puedes hacer commits!
echo.
pause