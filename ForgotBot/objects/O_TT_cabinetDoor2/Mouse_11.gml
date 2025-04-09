if global.taskComplete_makeTea4= false{
    room_goto(R_Hunt_TVKitchen_cupboard_base);
    audio_play_sound(A_atmo_wood_impact, 1, false, 1.0,0,random_range(.5, 1.1));
}