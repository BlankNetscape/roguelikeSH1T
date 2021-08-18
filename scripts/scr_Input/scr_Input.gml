// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Input(){
	keyLeft =	keyboard_check_released(vk_left)	|| keyboard_check_released(ord("A"));
	keyRight =	keyboard_check_released(vk_right)  || keyboard_check_released(ord("D"));  
	keyUp =		keyboard_check_released(vk_up)	    or keyboard_check_released(ord("W"));
	keyDown =	keyboard_check_released(vk_down)   or keyboard_check_released(ord("S"));
}