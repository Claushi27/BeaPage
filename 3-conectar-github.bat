@echo off
echo ========================================
echo  CONECTAR CON GITHUB - PASO 3
echo ========================================
echo.

echo Ingresa la URL de tu repositorio de GitHub:
echo Ejemplo: https://github.com/tu-usuario/love-story-bea.git
echo.
set /p repo_url="URL del repositorio: "

echo.
echo [1/2] Conectando con GitHub...
git remote add origin %repo_url%
if %errorlevel% equ 0 (
    echo     OK - Repositorio conectado
) else (
    echo     INFO - El repositorio ya estaba conectado
    echo     Actualizando URL...
    git remote set-url origin %repo_url%
)

echo.
echo [2/2] Subiendo archivos a GitHub...
git push -u origin main
if %errorlevel% equ 0 (
    echo     OK - Archivos subidos a GitHub!
) else (
    echo     ERROR - No se pudieron subir los archivos
    echo     Verifica que la URL sea correcta y que tengas permisos
    pause
    exit
)

echo.
echo ========================================
echo  EXITO! ARCHIVOS EN GITHUB
echo ========================================
echo.
echo Tu codigo esta en: %repo_url%
echo.
echo SIGUIENTE PASO:
echo.
echo 1. Ve a Render.com
echo 2. New + - Static Site
echo 3. Connect GitHub
echo 4. Selecciona tu repositorio: love-story-bea
echo 5. Publish directory: . (un punto solo)
echo 6. Create Static Site
echo 7. Espera 2 minutos
echo 8. Listo! Tendras tu URL
echo.
pause