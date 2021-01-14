///scr_dash_state
if (len == 0) { //if we're not moving...
    dir = face*90; // return actual direction
}

len = spd*4; //dash 4 times faster than move speed

// get horizontal and vertical speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// create dash effect
var dash = instance_create(x,y,obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
