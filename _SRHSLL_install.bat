@echo off
REM powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Desktop\%~n0.lnk');$s.TargetPath='%~f0';$s.Save()"
REM 
REM powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Desktop\logoff.lnk');$s.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\logoff.bat';$s.Save()"

REM copy bat files and icons from current dir to '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\'
@echo on

if not exist "%USERPROFILE%\AppData\Local\s_r_h_s_l_l" mkdir "%USERPROFILE%\AppData\Local\s_r_h_s_l_l"

copy logoff.bat    "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\logoff.bat"
copy logoff.ico    "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\logoff.ico"

copy lock.bat      "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\lock.bat"
copy lock.ico      "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\lock.ico"

copy sleep.bat     "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\sleep.bat"
copy sleep.ico     "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\sleep.ico"

copy hibernate.bat "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\hibernate.bat"
copy hibernate.ico "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\hibernate.ico"

copy restart.bat   "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\restart.bat"
copy restart.ico   "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\restart.ico"

copy shutdown.bat  "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\shutdown.bat"
copy shutdown.ico  "%USERPROFILE%\AppData\Local\s_r_h_s_l_l\shutdown.ico"

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\logoff.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\logoff.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+L';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\logoff.ico, 0';^
$ShortCut.Description = 'Logoff current user';^
$ShortCut.Save()

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\lock.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\lock.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+K';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\lock.ico, 0';^
$ShortCut.Description = 'Lock workstation';^
$ShortCut.Save()

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\sleep.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\sleep.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+S';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\sleep.ico, 0';^
$ShortCut.Description = 'Sleep';^
$ShortCut.Save()

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\hibernate.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\hibernate.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+H';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\hibernate.ico, 0';^
$ShortCut.Description = 'Hibernate';^
$ShortCut.Save()

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\restart.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\restart.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+R';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\restart.ico, 0';^
$ShortCut.Description = 'Restart the computer';^
$ShortCut.Save()

powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\shutdown.lnk');^
$ShortCut.TargetPath='%USERPROFILE%\AppData\Local\s_r_h_s_l_l\shutdown.bat';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+D';^
$ShortCut.IconLocation = '%USERPROFILE%\AppData\Local\s_r_h_s_l_l\shutdown.ico, 0';^
$ShortCut.Description = 'Shutdown the computer';^
$ShortCut.Save()

pause
