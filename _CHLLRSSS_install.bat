@echo off
REM copy icons from current dir to '%USERPROFILE%\AppData\Local\llsshrsc\'

if not exist "%USERPROFILE%\AppData\Local\chllrsss" mkdir "%USERPROFILE%\AppData\Local\chllrsss"

copy logoff.ico        "%USERPROFILE%\AppData\Local\chllrsss\logoff.ico"
REM Lock icon made by Appzgear from www.flaticon.com
copy lock.ico          "%USERPROFILE%\AppData\Local\chllrsss\lock.ico"
copy switchuser.ico    "%USERPROFILE%\AppData\Local\chllrsss\switchuser.ico"
copy sleep.ico         "%USERPROFILE%\AppData\Local\chllrsss\sleep.ico"
copy hibernate.ico     "%USERPROFILE%\AppData\Local\chllrsss\hibernate.ico"
copy restart.ico       "%USERPROFILE%\AppData\Local\chllrsss\restart.ico"
copy shutdown.ico      "%USERPROFILE%\AppData\Local\chllrsss\shutdown.ico"
copy control_panel.ico "%USERPROFILE%\AppData\Local\chllrsss\control_panel.ico"

@echo on

REM logoff
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\logoff.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\shutdown.exe';^
$ShortCut.Arguments='/l';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+L';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\logoff.ico, 0';^
$ShortCut.Description = 'Logoff current user';^
$ShortCut.Save()

REM lock
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\lock.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\rundll32.exe';^
$ShortCut.Arguments='User32.dll,LockWorkStation';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+K';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\lock.ico, 0';^
$ShortCut.Description = 'Lock workstation';^
$ShortCut.Save()

REM switchuser
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\switch user.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\tsdiscon.exe';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+U';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\switchuser.ico, 0';^
$ShortCut.Description = 'Switch user';^
$ShortCut.Save()

REM sleep
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\sleep.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\rundll32.exe';^
$ShortCut.Arguments='powrprof.dll,SetSuspendState 0,1,0';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+S';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\sleep.ico, 0';^
$ShortCut.Description = 'Sleep';^
$ShortCut.Save()

REM hibernate
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\hibernate.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\rundll32.exe';^
$ShortCut.Arguments='powrprof.dll,SetSuspendState';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+H';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\hibernate.ico, 0';^
$ShortCut.Description = 'Hibernate';^
$ShortCut.Save()

REM restart
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\restart.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\shutdown.exe';^
$ShortCut.Arguments='/r /t 00';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+R';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\restart.ico, 0';^
$ShortCut.Description = 'Restart the computer';^
$ShortCut.Save()

REM shutdown
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\shutdown.lnk');^
$ShortCut.TargetPath='%%SystemRoot%%\System32\shutdown.exe';^
$ShortCut.Arguments='/s /t 00';^
$ShortCut.WorkingDirectory = '%%SystemRoot%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+D';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\shutdown.ico, 0';^
$ShortCut.Description = 'Shutdown the computer';^
$ShortCut.Save()

REM control_panel
powershell ^
$Shell = New-Object -ComObject WScript.Shell;^
$ShortCut = $Shell.CreateShortcut('%USERPROFILE%\Desktop\control panel.lnk');^
$ShortCut.TargetPath='%%windir%%\system32\control.exe';^
$ShortCut.Arguments='';^
$ShortCut.WorkingDirectory = '%%windir%%\system32';^
$ShortCut.WindowStyle = 1;^
$ShortCut.Hotkey = 'CTRL+SHIFT+C';^
$ShortCut.IconLocation = '%%USERPROFILE%%\AppData\Local\chllrsss\control_panel.ico, 0';^
$ShortCut.Description = 'Control panel';^
$ShortCut.Save()

pause
