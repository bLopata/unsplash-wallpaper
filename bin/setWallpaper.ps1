
Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $Value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}

Set-WallPaper -value "C:\Users\Bee\Documents\Github\nodejs\src\unsplash-wallpaper\image.jpg"