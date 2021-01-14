/// scr_check_for_player()
if (instance_exists(obj_player)) {
    var dis = point_distance(x,y,obj_player.x, obj_player.y) // how far are we from the player?
    if (dis < sight) {
        state = scr_enemy_chase_state; //if player is within range, run chase script
        targetx = obj_player.x;
        targety = obj_player.y;
        } else {
        scr_enemy_choose_next_state(); //if player isn't in range, go back to wander/idle 
    }
} else {   
    scr_enemy_choose_next_state();
}
