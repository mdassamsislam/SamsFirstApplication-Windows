; Set the icon for the installer executable
Icon "C:\Users\Md As Sams Islam\Downloads\SAMS.ico"




; Name of the installer
OutFile "Sams First Application.exe"

; Directory to install to (e.g., Program Files)
InstallDir "$PROGRAMFILES\Sams First Application"

; Default installation directory
InstallDirRegKey HKCU "Software\Sams First Application" "Install_Dir"

; Request execution level to run as administrator
RequestExecutionLevel admin

; Pages to display
Page directory
Page instfiles

; Section for installing files
Section "Main Section"
    ; Output path for the files
    SetOutPath "$INSTDIR"




    ; Files to be included in the installer
    File "C:\Users\Md As Sams Islam\source\repos\Sams First Application\Sams First Application\bin\Debug\net8.0-windows\Sams First Application.exe"
    File "C:\Users\Md As Sams Islam\source\repos\Sams First Application\Sams First Application\bin\Debug\net8.0-windows\Sams First Application.dll"
    FILE "C:\Users\Md As Sams Islam\source\repos\Sams First Application\Sams First Application\bin\Debug\net8.0-windows\Sams First Application.deps.json"
    File "C:\Users\Md As Sams Islam\source\repos\Sams First Application\Sams First Application\bin\Debug\net8.0-windows\Sams First Application.pdb"
    File "C:\Users\Md As Sams Islam\source\repos\Sams First Application\Sams First Application\bin\Debug\net8.0-windows\Sams First Application.runtimeconfig.json"
   
    ; Create shortcuts (if applicable)
    CreateShortCut "$DESKTOP\Sams First Application.lnk" "$INSTDIR\Sams First Application.exe"
SectionEnd

; Uninstaller section
Section "Uninstall"
    ; Remove installed files
    Delete "$INSTDIR\Sams First Application.exe"
    Delete "$INSTDIR\Sams First Application.dll"
    RMDir /r "$INSTDIR"

    ; Remove shortcuts
    Delete "$DESKTOP\Sams First Application.lnk"

    ; Remove registry keys (if applicable)
    DeleteRegKey HKCU "Software\Sams First Application"
SectionEnd
