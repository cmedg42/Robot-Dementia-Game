if O_Backward_arrow.visible =true{


// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);


    



// -------------------------------------------------------------------Start House Bedroom----------------------------------------------------------------------

if room= R_bedroom1
    room_goto(R_bedroom7);

if room= R_bedroom7
    room_goto(R_bedroom1);

if room= R_bedroom_window
    room_goto(R_bedroom1);

if room= R_bedroom2
    room_goto(R_bedroom6);

if room= R_bedroom6
    room_goto(R_bedroom2);

if room= R_bedroom3_open
    room_goto(R_bedroom6);



// -------------------------------------------------------------------Start House Bedroom Hall----------------------------------------------------------------------

if room= R_bedHall1
    room_goto(R_bedroom3_open);

if room= R_bedHall2
    room_goto(R_bedHall5);

if room= R_bedHall3
    room_goto(R_bedHall4);

if room= R_bedHall4
    room_goto(R_bedHall3);

if room= R_bedHall5
    room_goto(R_bedHall4);

if room= R_bedHall7
    room_goto(R_bedHall1);
   
if room= R_bedHall8
       room_goto(R_bedHall6);

if room= R_bedHall6
    room_goto(R_bedHall1);

if room= R_bedHall12
    room_goto(R_restroom2);

if room= R_bedHall10{
    room_goto(R_restroom1);
}


if room= R_restroom1{
    audio_play_sound(A_Atmo_clock, 1, true, 1.0,0);
    room_goto(R_bedHall10);
}

if room= R_bedStairs2
    room_goto(R_bedStairs5);

if room= R_bedHall11
    room_goto(R_bedStairs1);

if room= R_bedStairs4
    room_goto(R_bedStairs2);



// -------------------------------------------------------------------Start House Restroom---------------------------------------------------------------------- 

if room= R_restroom4{
    global.taskComplete_bathroom = true;
    room_goto(R_restroom5);
}

if room= R_restroom2
    room_goto(R_bedHall12);

if room= R_restroom5{
    room_goto(R_restroom4);
}



if room= R_restroom6
    room_goto(R_restroom3);


// -------------------------------------------------------------------Start House Main Floor-----------------------------------------------------------------------------

if room= R_mainFloor5
    room_goto(R_mainFloor3);

if room= R_bedStairs5
    room_goto(R_bedStairs3);

if room= R_mainFloor1
    room_goto(R_mainFloor7);

if room= R_mainFloor7
    room_goto(R_mainFloor4);

if room= R_mainFloor4
    room_goto(R_mainFloor6);

if room= R_mainFloor2
    room_goto(R_mainFloor1);
  
if room= R_mainFloor6
       room_goto(R_mainFloor3);
// -------------------------------------------------------------------Dog Downstairs-----------------------------------------------------------------------------------

if room= R_downstairs_8{
    global.taskComplete_CheckDog=true;
       room_goto(R_Cutscene_DogRunning);
    audio_stop_all();
}
 

if room = R_downstairs_missing2{
    global.taskComplete_feedDog=true;
    // play basement sound here
    room_goto(R_downstairs_doorOpen1);
}

if room = R_downstairs_1
    room_goto(R_downstairs_13);

if room = R_downstairs_12
    room_goto(R_downstairs_4);

// -------------------------------------------------------------------Start House Kitchen---------------------------------------------------------------------------- 

if room= R_kitchen2_open_food_gone
    room_goto(R_kitchen5);

if room= R_kitchen_door_1
    room_goto(R_kitchen5);
   
if room= R_kitchen1
    room_goto(R_kitchen4);

if room= R_kitchen_door_3
    room_goto(R_kitchen_windowHall_3);

if room= R_kitchen_windowHall_3
    room_goto(R_kitchen_door_3);

if room= R_Hunt_stairwell_1
    room_goto(R_kitchen_windowHall_4);

if room= R_kitchen_windowHall_4
    room_goto(R_Hunt_stairwell_1);


// -------------------------------------------------------------------Church----------------------------------------------------------------------------------- 


if room= R_basement_13{
    O_HUD_transition1.visible= true;
    O_HUD_transition1.image_alpha= 1;
    alarm_set(0,15);
    room_goto(R_church_1);
}

if room= R_church_7{
    O_HUD_transition2.visible= true;
    O_HUD_transition2.image_alpha= 1;
    alarm_set(0,15);
    room_goto(R_downstairs_13);
}

// -------------------------------------------------------------------2nd Area-----------------------------------------------------------------------------------

// -------------------------------------------------------------------Hunt-----------------------------------------------------------------------------------


if room= R_Hunt_stairwell_2
    room_goto(R_kitchen_windowHall_4);

if room= R_Hunt_stairwell_4
    room_goto(R_Hunt_stairwell_3);

if room= R_Hunt_stairwell_3
    room_goto(R_Hunt_stairwell_4);

if room= R_Hunt_phone_1
    room_goto(R_Hunt_stairwell_5);

if room= R_Hunt_stairwell_5
    room_goto(R_Hunt_phone_1);

if room= R_Hunt_phone_4
    room_goto(R_Hunt_phone_6);

if room= R_Hunt_phone_6
    room_goto(R_Hunt_phone_4);

if room= R_Hunt_phone_2
    room_goto(R_Hunt_phone_3);

if room= R_Hunt_phone_3
    room_goto(R_Hunt_phone_2);

if room= R_Hunt_TV_1
    room_goto(R_Hunt_phone_5);

if room= R_Hunt_phone_5
    room_goto(R_Hunt_TV_1);

if room= R_Hunt_TV_4
    room_goto(R_Hunt_TV_6);

if global.taskComplete_makeTea5=false{
    if room= R_Hunt_TV_6
    room_goto(R_Hunt_TV_4);
    
    if room= R_Hunt_TV_9{
        room_goto(R_Hunt_TV_3_on)
    }
    }
   

   
if global.taskComplete_makeTea5=true{
       if room= R_Hunt_TV_6
       room_goto(R_Hunt_TV_4_on);
    
    if room= R_Hunt_TV_9{
            room_goto(R_Hunt_TV_3_on)
        }
       }  
   
if room= R_Hunt_TVKitchen_cupboard_base{
    
    room_goto(R_Hunt_TVKitchen_1);
    
    if global.taskComplete_teaPot5=false{
    
        O_TT_kettle_5_TVKitchen_cupboard_base.visible= false;
    }
    
    if global.taskComplete_teaPot6=false{
        
        O_TT_kettle_6_TVKitchen_cupboard_base.visible= false;
    }
    
}

if room= R_Hunt_TVKitchen_stove_base{
    
        room_goto(R_Hunt_TVKitchen_1);
    
}

  if room = R_Hunt_TVKitchen_1{
    if global.taskComplete_makeTea4=true{
        room_goto(R_Hunt_TVKitchen_1b);
        
    }
}
   
   
  
if room= R_Hunt_TV_8_flashlight_cup { 
    room_goto(R_Hunt_TV_10);
}
   
   
   
if room= R_Hunt_TV_10 { 
      room_goto(R_Hunt_TV_8_flashlight_cup);
}
 
   
   
if room = R_Hunt_TV_3_on{
       room_goto(R_Hunt_TV_9)
}
   
   
   
if room = R_Hunt_TV_3_on{
       room_goto(R_Hunt_TV_9)
}
   
   
if room = R_Hunt_phone_close_1{
       room_goto(R_Hunt_phone_4)
}   
   // -------------------------------------------------------------------Slender Forest------------------------------------------------------------------------------
if room = R_mail_outside_14{
      room_goto(R_slender_forest);
}     
   
 if room = R_slender_forest{
       global.slender_moved= false;
}
   
   
   // -------------------------------------------------------------------Old House------------------------------------------------------------------------------
if room = R_dining_1{
    if global.taskComplete_makeTea5=true{
        room_goto(R_Hunt_TV_2_on)
    }
    if global.taskComplete_makeTea5=false{
        room_goto(R_Hunt_TV_2)
    }
}

if room = R_Hunt_TV_2{
    room_goto(R_dining_1);
}

if room = R_dining_2{
      room_goto(R_dining_4);
}
   
if room = R_dining_4{
     room_goto(R_dining_2);
}   

 
if room = R_dining_door{
       room_goto(R_dining_3);
}  

if room = R_dining_3{
    if global.taskComplete_unlockDiningDoor=false{
        room_goto(R_dining_door);
    }
    if global.taskComplete_unlockDiningDoor=true{
        
        if global.taskComplete_restorePower=true{
                room_goto(R_dining_door_open_on);
            }
        if global.taskComplete_restorePower=false{
                room_goto(R_dining_door_open_off);
            }
    }

    
} 


if room= R_old_breaker_open_on{
    room_goto(R_old_on_1);
}

if room = R_old_on_phone_1{
    room_goto(R_old_on_18);
}

//if room = R_old_on_20{
//    room_goto();
//}
  
   
}













