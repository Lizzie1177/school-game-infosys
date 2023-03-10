/// @description Insert description here
// You can write your code in this editor

if (pistolEquipped) instance_create_layer(x,y,"Gun",obj_Pistol);
else instance_create_layer(x,y,"Gun",equippedWeapon);

x = roomStartX;
y = roomStartY;