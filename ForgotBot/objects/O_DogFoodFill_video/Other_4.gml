O_DogFoodFill_video.visible=false;

if room = R_downstairs_missing2{
    O_DogFoodFill_video.visible=true;
    
    O_DogFoodFill_video.depth=2;
    alarm_set(0,100);
    alarm_set(1,60);
}