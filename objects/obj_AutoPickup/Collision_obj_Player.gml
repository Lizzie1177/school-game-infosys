/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_Pistol))
		{
			instance_destroy(other.equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_AutoRifle);
		}
		other.equippedWeapon = obj_AutoRifle;
		other.maxAmmo = 20;
		other.currentAmmo = 20;
// Inherit the parent event
event_inherited();

