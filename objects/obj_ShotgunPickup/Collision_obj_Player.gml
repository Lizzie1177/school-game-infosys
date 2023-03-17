/// @description Insert description here
// You can write your code in this editor


if (!instance_exists(obj_Pistol))
		{
			instance_destroy(other.equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_Shotgun);
		}
		other.equippedWeapon = obj_Shotgun;
		other.maxAmmo = 6;
		other.currentAmmo = 6;


// Inherit the parent event
event_inherited();

