$uri = "https://dl.google.com/chrome/install/latest/chrome_installer.exe" 
$path = "$PSScriptRoot\ChromeSetup.exe" 
Invoke-WebRequest -Uri $uri -OutFile $path Start-Process $path /install -NoNewWindow -Wait Remove-Item .\ChromeSetup.exe
