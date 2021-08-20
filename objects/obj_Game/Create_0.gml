/// @description Insert description here
// You can write your code in this editor
global.grid_size = 16;
global.grid_width = room_width / global.grid_size +1;
global.grid_height = room_height / global.grid_size +1;
global.grid = mp_grid_create(0,0, global.grid_width, global.grid_height, global.grid_size, global.grid_size);