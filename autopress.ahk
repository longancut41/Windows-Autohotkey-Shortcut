#maxthreadsperhotkey 3;

global autoPressisEnable := false

autoPress(){
    if(!autoPressisEnable){
        global autoPressisEnable := true
        while(autoPressisEnable){
            sleep 1 ; set sleep time for next press (1 - inf milisecond)
            send "{z}" ; change key inside the {} to change to key you want
            send "{c}"
        }
    }
}

disableautopress(){
    global autoPressisEnable := false
}

^#!up:: autoPress()
#SuspendExempt
f8::Suspend -1
^#!down::{
    disableautopress()
    }