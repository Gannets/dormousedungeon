///scr_move_state
scr_get_input()

if (dash_key && obj_player_stats.stamina >= 5) { //change state when dash button is pressed
    state = scr_dash_state;
    alarm[0] = room_speed/7; //length of dash
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}

if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

//get direction
dir = point_direction(0,0,xaxis,yaxis);

//get length
if (xaxis == 0 && yaxis == 0) {
    len = 0; // not moving
} else {
    len = spd; // moving
    scr_get_face();
}

//get horizontal and vertical speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//sprite control
//stand still if not moving
image_speed = .2;
if (len == 0) image_index = 0;

switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}


