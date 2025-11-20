@echo off
setlocal

:: este script funciona como um instalador do autostart do sistema do SAAE
:: ele instala o atalho na inicialização e também pode desinstalar
:: usar: autostart_saae.bat --remove  (remove o atalho da inicialização)

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set shortcut=%startup%\sistema_do_saae.url

if "%1"=="--remove" (
    if exist "%shortcut%" del "%shortcut%"
    exit
)

echo [InternetShortcut] > "%shortcut%"
echo URL=http://45.162.58.156:3000/ >> "%shortcut%"
echo IconFile=C:\Windows\System32\shell32.dll >> "%shortcut%"
echo IconIndex=146 >> "%shortcut%"

exit

