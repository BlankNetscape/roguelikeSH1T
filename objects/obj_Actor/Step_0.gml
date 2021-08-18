/// @description Insert description here

canMove = true;



// Movements 
if (canMove == true) { scr_Input(); } 


if (keyLeft == true and canMove == true) {
	if(!collision_point(x - 16, y, obj_Wall,0,0)){
		x -= 16; turn += 1; canMove = false;
	}
}
if (keyRight == true and canMove == true) {
	if(!collision_point(x + 16, y, obj_Wall,0,0)){
		x += 16; turn += 1; canMove = false;
	}
}
if (keyUp == true and canMove == true) {
	if(!collision_point(x, y - 16, obj_Wall,0,0)){
		y -= 16; turn += 1; canMove = false;
	}
}
if (keyDown == true and canMove == true) {
	if(!collision_point(x, y + 16, obj_Wall,0,0)){
		y += 16; turn += 1; canMove = false;
	}
}

// Idle


// Extra
if (mouse_check_button_released(mb_left)){
	var instSelf = collision_point(mouse_x,mouse_y,obj_Actor,0,0);
	
	if ( instSelf != noone ) {selected=true;} else {selected=false;}
}
if (selected==true){
	possibleSelection = collision_point(mouse_x,mouse_y,obj_Grid,0,0);
	if(possibleSelection) { possibleSelectionSprite = sSelction_green; }
	else {  possibleSelectionSprite = sSelction_red; }
	
	tempDistanceX_Rest = (mouse_x)mod 16;
	tempDistanceY_Rest = (mouse_y)mod 16;
		
	predict_x = mouse_x - tempDistanceX_Rest;
	predict_y = mouse_y - tempDistanceY_Rest;
}

		
