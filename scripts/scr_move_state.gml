///scr_move_state
scr_get_input()

if (dash_key) { //change state when dash button is pressed
    state = scr_dash_state;
    alarm[0] = room_speed/7; //length of dash
}

//get direction
dir = point_direction(0,0,xaxis,yaxis);

//get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

//get horizontal and vertical speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//sprite control - stand still if not moving
image_speed = .2;
if (len == 0) image_index = 0;

//vertical sprite - direction sprite if moving
if (vspd > 0) {
    sprite_index = spr_player_down;
} else if (vspd < 0) {
    sprite_index = spr_player_up;
}

//horizontal sprite - direction sprite if moving
if (hspd > 0) {
    sprite_index = spr_player_right;
} else if (hspd < 0) {
    sprite_index = spr_player_left;
}


