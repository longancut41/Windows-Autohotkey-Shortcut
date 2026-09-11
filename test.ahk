#d::MsgBox "The active window is '" WinGetTitle("A") "'."

Except_Windows := ['', 'Program Manager', 'Command Palette', 'Search']

#w::{
    HasIndex := 0
    ActiveWindow := WinGetTitle("A")
    for Index in Except_Windows
        if ActiveWindow == Index
            HasIndex := 1
    if !HasIndex
        WinKill(ActiveWindow)
}