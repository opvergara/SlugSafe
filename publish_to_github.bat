@echo off
setlocal ENABLEDELAYEDEXPANSION

cd /d C:\Users\geome\SlugSafeChile

where gh >nul 2>nul
if %ERRORLEVEL%==0 (
  echo [INFO] GitHub CLI detectado. Creando y publicando repo opvergara/SlugSafe ...
  git init
  git add .
  git commit -m "feat: initial LungSafe Chile interactive flyer (IRA/IPA map + charts + logo)"
  git branch -M main
  gh repo create opvergara/SlugSafe --public --source . --remote origin --push
  goto :done
)

echo [WARN] GitHub CLI no encontrado.
echo - Cree el repositorio vacio en: https://github.com/opvergara/SlugSafe
echo - Despues ejecute los siguientes comandos:

echo.
echo ====== COMANDOS ======
echo git init
echo git add .
echo git commit -m "feat: initial LungSafe Chile interactive flyer (IRA/IPA map + charts + logo)"
echo git branch -M main
echo git remote add origin https://github.com/opvergara/SlugSafe.git
echo git push -u origin main
echo ======================
echo.

:done
echo [OK] Listo. Revise GitHub Pages en Settings -> Pages (branch main, carpeta / root)
endlocal
