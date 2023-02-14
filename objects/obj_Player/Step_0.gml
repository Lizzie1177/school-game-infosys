if (!GameManager.gamePaused)
{
	//Keybind checks

	// Get Player Inputs
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));


	//calculate movement
	var hmove = key_right - key_left;
	var vmove = key_down - key_up;

	hsp = hmove * moveSpd;
	vsp = vmove * moveSpd;



	//Collision
	//Horizontal
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		while(!place_meeting(x+sign(hsp), y, obj_Wall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical
	if (place_meeting(x,y+vsp,obj_Wall))
	{
		while(!place_meeting(x, y+sign(vsp), obj_Wall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}




	x += hsp;
	y += vsp;

}