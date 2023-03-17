/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(par_Enemy))
{
	roomCleared = true;
	if (ds_grid_get(GameManager.clearGrid,roomId[0],roomId[1]) = 0) 
	{
	ds_grid_set(GameManager.clearGrid,roomId[0],roomId[1],1);
	}
}
else 
{
	roomCleared = false;
	ds_grid_set(GameManager.clearGrid,roomId[0],roomId[1],0);
}

if (ds_grid_get(GameManager.clearGrid,roomId[0],roomId[1]) = 1)
{
	if (obj_Player.hasRoomClearEvent) obj_Player.roomClearEvent();
	ds_grid_set(GameManager.clearGrid,roomId[0],roomId[1],2);
	show_debug_message("Room Event Proc");
}

if (roomCleared)
{
	if (nDoor != noone) nDoor.locked = false;
	if (sDoor != noone) sDoor.locked = false;
	if (eDoor != noone) eDoor.locked = false;
	if (wDoor != noone) wDoor.locked = false;
}

if (bossRoom && roomCleared)
{
	with(instance_create_layer(x,y,"Doors",obj_Trapdoor))
	{
		switch(other.roomFloor)
		{
			case 0:
				nextFloor = rm_2_spawn;
				break;
			
			case 1:
				nextFloor = rm_3_spawn;
				break;
				
			case 2:
				nextFloor = Room_MainMenu;
				break;
				
			default:
				nextFloor = TestRoom;
				break;
		}
	}
}
