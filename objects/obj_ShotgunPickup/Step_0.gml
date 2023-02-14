/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if (place_meeting(x,y,obj_Player))
{
	with (obj_Player)
	{
		if (!instance_exists(obj_Pistol))
		{
			instance_destroy(equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_Shotgun);
		}
		equippedWeapon = obj_Shotgun;
		maxAmmo = 6;
		currentAmmo = 6;
	}
}

event_inherited();

