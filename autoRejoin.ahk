#maxthreadsperhotkey 3;
#SingleInstance Force

SetKeyDelay 0
SetMouseDelay 0

global isEnable := false

enableRun(){
    if(!isEnable){
        global isEnable := true
        while(isEnable){
            getColor1 := PixelGetColor(997, 596)
            getColor2 := PixelGetColor(997, 619)
            if (getColor1 == "0xFFFFFF"){
                SendEvent "{Click 997 596}"
                Sleep 30000
                SendEvent "{Click 990 990}"
            }
            else if (getColor2 == "0xFFFFFF"){
                SendEvent "{Click 997 619}"
                Sleep 30000
                SendEvent "{Click 990 990}"
            }
            Sleep 60000
        }
    }
}


disableRun(){
    global isEnable := false
}


^#!up::{
    SoundBeep 1000, 500
    enableRun()
}
#SuspendExempt
CapsLock::Suspend 1
#CapsLock::Suspend 0

^#!down::{
    SoundBeep
    disableRun()
}

^#!t::{
    MouseGetPos(&X, &Y)
    getColor := PixelGetColor(X, Y)
    MsgBox Format("X: {}, Y: {}, color: {}", X, Y, getColor)

}