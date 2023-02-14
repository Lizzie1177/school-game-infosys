/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_Player))
{
	with (obj_Player)
	{
		if (!instance_exists(obj_Pistol))
		{
			instance_destroy(equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_AutoRifle);
		}
		equippedWeapon = obj_AutoRifle;
		maxAmmo = 20;
		currentAmmo = 20;
	}
}

// Inherit the parent event
event_inherited();

