if global.correctKey != O_Bot_keyRingArm_8{
    audio_play_sound(A_Bot_beep2, 1, false, 1.0,0,random_range(.5, 1.1));
}
if O_Bot_keyRingArm_8= global.correctKey{
    audio_play_sound(A_Bot_beep1, 1, false, 1.0,0,random_range(.5, 1.1));
    global.correctKeyChosen=true;
}