/// @description 

draw_self() // Need for draw self. Without stops drow main sprite. 


draw_circle_color(x,y,1,c_red,c_red,0) //NOTE: Draw anchor point.

if (selected) { //NOTE: Draw selection's mode rectangles.
	#region //NOTE: White selection rectangle on Actor's
	
	draw_set_alpha(0.5);
	draw_sprite(sSelction_white,0,x,y);
	draw_set_alpha(1);
	
	#endregion
	
	draw_sprite(possibleSelectionSprite, 0, predict_x, predict_y);
	
	//NOTE: Draw path
	draw_path(path, x, y, true)
}


