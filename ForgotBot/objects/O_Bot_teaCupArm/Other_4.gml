if global.taskComplete_makeTea4=true{
    O_Bot_teaCupArm.visible=true;
    O_Bot_teaCupArm.depth= 1;
}

if room = R_Hunt_TV_8_flashlight_cup{
    O_Bot_teaCupArm.visible=false;
    instance_destroy(O_Bot_teaCupArm);
}