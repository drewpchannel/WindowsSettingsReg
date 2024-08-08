#Setup Folder
if (-not (Test-Path -Path C:\treeline_files))
{
    New-Item -Path C:\treeline_files -ItemType Directory | Out-Null
}

#get files from GitHub
Invoke-WebRequest https://github.com/drewpchannel/WindowsSettingsReg/archive/refs/heads/main.zip -OutFile c:\treeline_files\wsr.zip
Expand-Archive -Path c:\treeline_files\wsr.zip -DestinationPath c:\treeline_files\ -Force

Start-Process reg.exe -ArgumentList "import C:\treeline_files\WindowsSettingsReg-main\WindowsSettings.reg" -Wait

exit 0