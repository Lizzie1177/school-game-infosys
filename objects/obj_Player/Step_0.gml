if (!GameManager.gamePaused)
{
	//Keybind checks

	// Get Player Inputs
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	next_weapon = mouse_wheel_up() || mouse_wheel_down();

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





	//weapon switching
	if (next_weapon) && !(equippedWeapon = noone)
	{
		if(instance_exists(obj_Pistol))
		{
			instance_destroy(obj_Pistol);
			instance_create_layer(x,y,"Gun", equippedWeapon);
		}
		else
		{
			instance_destroy(equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_Pistol);
		}
		
		
		show_debug_message("weapon equipped " + string(equippedWeapon));
	}
	else if (next_weapon)
	{
		show_debug_message("No weapon equipped");
	}







	x += hsp;
	y += vsp;

}