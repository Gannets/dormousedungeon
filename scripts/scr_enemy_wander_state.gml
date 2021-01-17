/// scr_enemy_wander_state()
scr_check_for_player();
if (point_distance(x, y, targetx, targety)) > spd {
    scr_enemy_movement();
}
