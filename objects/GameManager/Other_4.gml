/// @description Insert description here
// You can write your code in this editor

if (room = Room_MainMenu)
{
	var gameSeed = ""
	//Floor1
	ds_grid_set(roomGrid,0,0,0); //Spawn Room
	ds_grid_set(roomGrid,0,1,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,1));
	ds_grid_set(roomGrid,0,2,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,2));
	ds_grid_set(roomGrid,0,3,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,3));
	ds_grid_set(roomGrid,0,4,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,4));
	ds_grid_set(roomGrid,0,5,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,5));
	ds_grid_set(roomGrid,0,6,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,6));
	ds_grid_set(roomGrid,0,7,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,7));
	ds_grid_set(roomGrid,0,8,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,8));
	ds_grid_set(roomGrid,0,9,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,9));
	ds_grid_set(roomGrid,0,10,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,0,10));
	ds_grid_set(roomGrid,0,11,0);//Boss Room
	ds_grid_set(roomGrid,0,12,0);//unused

	gameSeed = gameSeed + "/";
	//Floor 2
	ds_grid_set(roomGrid,1,0,0); // Spawn Room
	ds_grid_set(roomGrid,1,1,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,1));
	ds_grid_set(roomGrid,1,2,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,2));
	ds_grid_set(roomGrid,1,3,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,3));
	ds_grid_set(roomGrid,1,4,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,4));
	ds_grid_set(roomGrid,1,5,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,5));
	ds_grid_set(roomGrid,1,6,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,6));
	ds_grid_set(roomGrid,1,7,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,7));
	ds_grid_set(roomGrid,1,8,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,8));
	ds_grid_set(roomGrid,1,9,0);
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,9));
	ds_grid_set(roomGrid,1,10,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,10));
	ds_grid_set(roomGrid,1,11,round(random_range(0,2)));
	gameSeed = gameSeed + string(ds_grid_get(roomGrid,1,11));
	ds_grid_set(roomGrid,1,12,0); //Boss Room


	show_debug_message(gameSeed);


	//Reset Rooms
	//Floor 1
	ds_grid_set(clearGrid,0,0,0);
	ds_grid_set(clearGrid,0,1,0);
	ds_grid_set(clearGrid,0,2,0);
	ds_grid_set(clearGrid,0,3,0);
	ds_grid_set(clearGrid,0,4,0);
	ds_grid_set(clearGrid,0,5,0);
	ds_grid_set(clearGrid,0,6,0);
	ds_grid_set(clearGrid,0,7,0);
	ds_grid_set(clearGrid,0,8,0);
	ds_grid_set(clearGrid,0,9,0);
	ds_grid_set(clearGrid,0,10,0);
	ds_grid_set(clearGrid,0,11,0);
	ds_grid_set(clearGrid,0,12,0);

	//Floor 2
	ds_grid_set(clearGrid,1,0,0);
	ds_grid_set(clearGrid,1,1,0);
	ds_grid_set(clearGrid,1,2,0);
	ds_grid_set(clearGrid,1,3,0);
	ds_grid_set(clearGrid,1,4,0);
	ds_grid_set(clearGrid,1,5,0);
	ds_grid_set(clearGrid,1,6,0);
	ds_grid_set(clearGrid,1,7,0);
	ds_grid_set(clearGrid,1,8,0);
	ds_grid_set(clearGrid,1,9,0);
	ds_grid_set(clearGrid,1,10,0);
	ds_grid_set(clearGrid,1,11,0);
	ds_grid_set(clearGrid,1,12,0);

	//Floor 3
	ds_grid_set(clearGrid,2,0,0);
	ds_grid_set(clearGrid,2,1,0);
	ds_grid_set(clearGrid,2,2,0);
}