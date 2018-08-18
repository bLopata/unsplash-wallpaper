node "../index.js"
TIME /T 1.5

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Users\Bee\Documents\Github\nodejs\src\unsplash-wallpaper\bin\image1.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters