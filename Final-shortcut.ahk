; Phutdown & restart shortcut keys
^#!NumpadDiv::{
shutdown_result := MsgBox("Would you like to Shutdown?", "Shutdown warning", 4)
if shutdown_result = "Yes"
    Run "C:\Users\Minh-Long\Documents\batch-files\Poweroff.EXE"
}

^#!NumpadMult::{
shutdown_result := MsgBox("Would you like to Reboot?", "Reboot warning", 4)
if shutdown_result = "Yes"
    Run "C:\Users\Minh-Long\Documents\batch-files\Reboot.EXE"
}

; Power control shortcut keys
^#!Numpad0::{
    Run "powercfg.exe /s a1841308-3541-4fab-bc81-f71556f20b4a"
    MsgBox "Power save mode", "Power Option"
}

^#!Numpad1::{
    Run "powercfg.exe /s 381b4222-f694-41f0-9685-ff5bb260df2e"
    MsgBox "Balance mode", "Power Option"
}

^#!Numpad2::{
    Run "powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"
    MsgBox "Hight performance mode","Power Option"
}

^#!Numpad3::{
    Run "powercfg.exe /s f9c2126f-9131-41cb-a1d1-742169e0e66a"
    MsgBox "Ultimate performance mode", "Power Option"
}