
Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $Value

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name WallpaperStyle -Value 22

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}

Set-WallPaper -value "C:\Users\Bee\Documents\Github\nodejs\src\unsplash-wallpaper\image1.jpg"