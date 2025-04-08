O_Left_arrow.visible=true;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=true;
O_Backward_arrow.visible=false;


audio_stop_all();
audio_play_sound(A_Atmo_quiet_cellblock_amb,1,true);


if global.taskComplete_payRespects=true{
    O_Left_arrow.visible=false;
    O_Right_arrow.visible=false;
    
    O_Forward_arrow.visible=true;
    O_Backward_arrow.visible=false;
}

