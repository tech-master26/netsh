@echo off

echo.
echo ================================
echo        Wi-Fi Passwords
echo ================================
echo.

for /f "tokens=2 delims=:" %%G in ('netsh wlan show profiles') do (
    echo Profile: %%G
    echo ------------------------------
    echo Password:
    netsh wlan show profile name="%%G" key=clear | findstr "Key Content"
    echo.
)

echo Script execution completed.
