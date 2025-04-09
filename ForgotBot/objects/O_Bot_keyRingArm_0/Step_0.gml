if global.correctKeyChosen=true{
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
    if global.taskComplete_unlockKitchenDoor= false{
        room_goto(R_kitchen_door_2);
        global.correctKeyChosen=false;
    }
    
    if global.taskComplete_run= true{
        global.taskComplete_unlockDiningDoor=true;
            room_goto(R_dining_door_open_off);
            global.correctKeyChosen=false;
        }
    
    
}