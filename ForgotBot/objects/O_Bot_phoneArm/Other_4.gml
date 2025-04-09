
if global.taskComplete_answerPhone1= true{
    if room= R_Hunt_phone_close_1{
        O_Bot_phoneArm.visible=true;
    }
    else{
        O_Bot_phoneArm.visible=false;
    }
}

if room = R_old_on_phone_1{
    O_Bot_phoneArm.visible=true;
}
