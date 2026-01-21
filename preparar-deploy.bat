@echo off
echo ========================================
echo  PREPARANDO ARCHIVOS PARA RENDER
echo ========================================
echo.

echo [1/3] Copiando index_new.html a index.html...
copy /Y index_new.html index.html
if %errorlevel% equ 0 (
    echo     OK - index.html creado
) else (
    echo     ERROR - No se pudo copiar index.html
)

echo.
echo [2/3] Copiando style_new.css a style.css...
copy /Y style_new.css style.css
if %errorlevel% equ 0 (
    echo     OK - style.css creado
) else (
    echo     ERROR - No se pudo copiar style.css
)

echo.
echo [3/3] Actualizando referencias en index.html...
powershell -Command "(gc index.html) -replace 'style_new.css', 'style.css' | Out-File -encoding ASCII index.html"
if %errorlevel% equ 0 (
    echo     OK - Referencias actualizadas
) else (
    echo     ERROR - No se pudieron actualizar referencias
)

echo.
echo ========================================
echo  PREPARACION COMPLETA!
echo ========================================
echo.
echo Archivos listos para subir:
echo   - index.html
echo   - style.css
echo   - Imagenes/
echo   - contador-config.js (opcional)
echo.
echo SIGUIENTE PASO:
echo 1. Opcion facil: Arrastra toda la carpeta a https://app.netlify.com/drop
echo 2. Opcion GitHub: Sube a GitHub y conecta con Render
echo.
pause