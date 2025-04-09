if O_mail_FrontDoorOpen_video.visible=true{
    O_taskBox.visible= false;
    O_HUD_frame.visible= false;
    O_Left_arrow.visible= false;
    O_Right_arrow.visible= false;
    O_Forward_arrow.visible= false;
    O_Backward_arrow.visible= false;
    
    
    
    if image_index= 135 {
        O_mail_FrontDoorOpen_video.visible=false;
        global.tC_doorUnlockVideo = true;
        instance_destroy(O_mail_FrontDoorOpen_video);
        
        O_taskBox.visible= true;
        O_HUD_frame.visible= true;
        O_Left_arrow.visible= true;
        O_Right_arrow.visible= true;
        O_Forward_arrow.visible= true;
        O_Backward_arrow.visible= true;
        
    }
}






