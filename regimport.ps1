#get files from GitHub
Invoke-WebRequest https://github.com/drewpchannel/WindowsSettingsReg/archive/refs/heads/main.zip -OutFile .\wsr.zip
Expand-Archive .\wsr.zip -Force

Start-Process reg.exe -ArgumentList "import .\wsr\WindowsSettingsReg-main\WindowsSettings.reg" -Wait

exit 0