if global.restorePower_switches==9{
    
    instance_destroy(O_breakerBox_switch_1);
    instance_destroy(O_breakerBox_switch_2);
    room_goto(R_old_breaker_open_on);
}