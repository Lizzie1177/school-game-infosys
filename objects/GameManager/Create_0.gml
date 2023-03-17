/// @description Insert description here
// You can write your code in this editor

roomClearEvent = NoRoomClearEvent;

randomize();

if (instance_number(GameManager) > 1) instance_destroy();


clearGrid = ds_grid_create(3,13);
roomGrid = ds_grid_create(2,13);

//Floor1
ds_grid_set(roomGrid,0,0,0); //Spawn Room
ds_grid_set(roomGrid,0,1,round(random_range(0,2)));
ds_grid_set(roomGrid,0,2,0);
ds_grid_set(roomGrid,0,3,0);
ds_grid_set(roomGrid,0,4,0);
ds_grid_set(roomGrid,0,5,0);
ds_grid_set(roomGrid,0,6,0);
ds_grid_set(roomGrid,0,7,0);
ds_grid_set(roomGrid,0,8,0);
ds_grid_set(roomGrid,0,9,0);
ds_grid_set(roomGrid,0,10,0);
ds_grid_set(roomGrid,0,11,0);
ds_grid_set(roomGrid,0,12,0);
//Floor 2
ds_grid_set(roomGrid,1,0,0); // Spawn Room
ds_grid_set(roomGrid,1,1,0);
ds_grid_set(roomGrid,1,2,0);
ds_grid_set(roomGrid,1,3,0);
ds_grid_set(roomGrid,1,4,0);
ds_grid_set(roomGrid,1,5,0);
ds_grid_set(roomGrid,1,6,0);
ds_grid_set(roomGrid,1,7,0);
ds_grid_set(roomGrid,1,8,0);
ds_grid_set(roomGrid,1,9,0);
ds_grid_set(roomGrid,1,10,0);
ds_grid_set(roomGrid,1,11,0);
ds_grid_set(roomGrid,1,12,0);

show_debug_message("Room Grid floor 1, room 1 " + string(ds_grid_get(roomGrid,0,1)));