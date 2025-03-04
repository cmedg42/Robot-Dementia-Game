if global.taskComplete_CheckDog=true{
    if room = R_kitchen5{
        O_Bot_dogFoodArm.visible= true;
        O_Bot_dogFoodArm.depth= 1;
        
    }
    
    if room = R_downstairs_missing2{
            O_Bot_dogFoodArm.visible=false;
        instance_destroy(O_Bot_dogFoodArm);
    }
     
}