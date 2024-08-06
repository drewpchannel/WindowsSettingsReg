#get files from GitHub
Invoke-WebRequest https://github.com/drewpchannel/WindowsSettingsReg/archive/refs/heads/main.zip -OutFile .\wsr.zip
Expand-Archive .\wsr.zip -Force

$filePath = Resolve-Path ".\wsr\WindowsSettingsReg-main" 

Start-Process reg.exe -ArgumentList "import $filePath\WindowsSettings.reg" -Wait

exit 0