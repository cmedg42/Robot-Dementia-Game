
if global.taskComplete_makeTea4 = true{
if room = R_Hunt_TVKitchen_1{
    O_Backward_arrow.visible=true;
    instance_destroy(O_TT_kettlePour_animation);
    instance_destroy(O_TT_final_teacup);
    instance_destroy(O_TT_final_teacup_string);
    instance_destroy(O_TT_stoveButton);
}
}