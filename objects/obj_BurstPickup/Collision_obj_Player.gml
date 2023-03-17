/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_Pistol))
		{
			instance_destroy(other.equippedWeapon);
			instance_create_layer(x,y,"Gun", obj_BurstRifle);
		}
		other.equippedWeapon = obj_BurstRifle;
		other.maxAmmo = 15;
		other.currentAmmo = 15;
// Inherit the parent event
event_inherited();

