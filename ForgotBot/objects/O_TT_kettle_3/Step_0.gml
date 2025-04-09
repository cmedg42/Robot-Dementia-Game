if global.taskComplete_teaPot3= true{
    move_towards_point(mouse_x-1,mouse_y-1,10);
    O_TT_kettle_3.visible=true;
}
if global.taskComplete_makeTea2=true{
    instance_destroy(O_TT_kettle_3);
}