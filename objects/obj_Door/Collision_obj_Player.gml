/// @description Insert description here
// You can write your code in this editor
if (!locked)
{
	
	switch(ds_grid_get(GameManager.roomGrid,targetRoomFloor,targetRoomNum))
	{
		case 0: 
			room_goto(targetRoom);
			break;
		
		case 1:
			room_goto(targetRoomAlt);
			break;
			
		case 2: 
			room_goto(targetRoomAltTwo);
			break;
			
		default:
			room_goto(rm_1_spawn);
			break;
		
	}
	
	
	switch (side)
	{
		case "east":
			other.roomStartX = playerPosXWest;
			other.roomStartY = playerPosYWest;
			break;
		
		case "west":
			other.roomStartX = playerPosXEast;
			other.roomStartY = playerPosYEast;
			break;
		
		case "north":
			other.roomStartX = playerPosXSouth;
			other.roomStartY = playerPosYSouth;
			break;
			
		case "south":
			other.roomStartX = playerPosXNorth;
			other.roomStartY = playerPosYNorth;
			break;
		
		default:
			other.roomStartX = room_width / 2;
			other.roomStartY = room_height / 2;
	}
}