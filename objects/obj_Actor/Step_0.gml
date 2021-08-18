//SECTION: Restore variables for each step.
canMove = true;


//SECTION: Movements 
if (canMove == true) { scr_Input(); } // Get keyboard inputs


if (keyLeft == true and canMove == true) {	// Step Left
	if(!collision_point(x - 16, y, obj_Wall,0,0)){
		x -= 16; turn += 1; canMove = false;
	}
}
if (keyRight == true and canMove == true) {	// Step Right
	if(!collision_point(x + 16, y, obj_Wall,0,0)){
		x += 16; turn += 1; canMove = false;
	}
}
if (keyUp == true and canMove == true) {	// Step Up
	if(!collision_point(x, y - 16, obj_Wall,0,0)){
		y -= 16; turn += 1; canMove = false;
	}
}
if (keyDown == true and canMove == true) {	// Step Down
	if(!collision_point(x, y + 16, obj_Wall,0,0)){
		y += 16; turn += 1; canMove = false;
	}
}


//SECTION: Idle


//SECTION: Move selection
if (mouse_check_button_released(mb_left)){
	//NOTE: Toogle selection mode
	var instSelf = collision_point(mouse_x,mouse_y,obj_Actor,0,0);
	
	if ( instSelf != noone ) {selected=true;} else {selected=false;}
}
if (selected==true){
	//NOTE: Swap mouse selection sprites
	possibleSelection = collision_point(mouse_x,mouse_y,obj_Grid,0,0);
	if(possibleSelection) { possibleSelectionSprite = sSelction_green; }
	else {  possibleSelectionSprite = sSelction_red; }
	
	//NOTE: Make selection sprite's coords snap to grid
	tempDistanceX_Rest = (mouse_x)mod 16;
	tempDistanceY_Rest = (mouse_y)mod 16;
		
	predict_x = mouse_x - tempDistanceX_Rest;
	predict_y = mouse_y - tempDistanceY_Rest;
}

		
