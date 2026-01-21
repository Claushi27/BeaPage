@echo off
echo ========================================
echo  SUBIR A GITHUB - PASO 2
echo ========================================
echo.

echo [1/6] Preparando archivos...
call preparar-deploy.bat

echo.
echo [2/6] Inicializando repositorio Git...
git init
if %errorlevel% equ 0 (
    echo     OK - Repositorio inicializado
) else (
    echo     ERROR - Ya existe un repositorio
)

echo.
echo [3/6] Agregando archivos...
git add .
if %errorlevel% equ 0 (
    echo     OK - Archivos agregados
) else (
    echo     ERROR - No se pudieron agregar archivos
)

echo.
echo [4/6] Creando commit...
git commit -m "Love story website - Ready for deployment"
if %errorlevel% equ 0 (
    echo     OK - Commit creado
) else (
    echo     ERROR - No se pudo crear commit
    echo     Tip: Asegurate de haber ejecutado 1-configurar-git.bat primero
    pause
    exit
)

echo.
echo [5/6] Renombrando rama a 'main'...
git branch -M main
if %errorlevel% equ 0 (
    echo     OK - Rama renombrada
) else (
    echo     INFO - La rama ya se llama main
)

echo.
echo ========================================
echo  ARCHIVOS LISTOS PARA SUBIR!
echo ========================================
echo.
echo SIGUIENTE PASO:
echo.
echo 1. Ve a GitHub.com y crea un nuevo repositorio
echo 2. Llamalo: love-story-bea (o el nombre que quieras)
echo 3. NO inicialices con README
echo 4. Copia la URL que te da (ejemplo: https://github.com/tu-usuario/love-story-bea.git)
echo 5. Ejecuta: 3-conectar-github.bat
echo.
pause