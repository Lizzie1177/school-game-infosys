/// @description Insert description here
// You can write your code in this editor

roomClearEvent = NoRoomClearEvent;

randomize();

if (instance_number(GameManager) > 1) instance_destroy();


clearGrid = ds_grid_create(3,13);
roomGrid = ds_grid_create(2,13);
