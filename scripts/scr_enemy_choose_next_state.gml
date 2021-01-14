/// scr_enemy_choose_next_state()
if (alarm[0] <= 0) {
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state); //randomly pick between these states when alarm rings
    alarm[0] = room_speed*irandom_range(2,4); // choose random integer for new alarm timer
    targetx = random(room_width); // pick a random spot in the room to wander towards
    targety = random(room_height);
}
