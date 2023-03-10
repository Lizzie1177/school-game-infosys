/// @description Insert description here
// You can write your code in this editor
if (!locked)
{
	room_goto(targetRoom);
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