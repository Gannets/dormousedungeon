///scr_attack_state
image_speed = .75;

//switch statements can execute different code depending on the case.
switch (sprite_index) { //what is the value of sprite_index?
    case spr_player_down: // if the value is spr_player_down, continue
        sprite_index = spr_player_attack_down; //change sprite
        break; //leave this case, move to next
    
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;

    case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;

    case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
}

//create damage object (on this anim frame
if (image_index >= 1 && attacked = false) {
    var xx = 0;
    var yy = 0;
//switch statements can execute different code depending on the case.
    switch (sprite_index) { //what is the value of sprite_index?
        case spr_player_attack_down: // if the value is spr_player_down, continue
            xx = x; //player x pos
            yy = y+12; // player 7 pos plus 8px
            break; //leave this case, move to next
        
        case spr_player_attack_up:
            xx = x;
            yy = y-12;
            break;
    
        case spr_player_attack_left:
            xx = x-12;
            yy = y;
            break;
    
        case spr_player_attack_right:
            xx = x+12;
            yy = y;
            break;
    }
    
    var damage = instance_create(xx,yy,obj_damage); //instance_create becomes obj id when resolved
    damage.creator = id; //the player(id) is the creator of this damage object
    attacked = true;
}
