/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < 1 + obj_Player.extraProjectileMod;i++)
{
	with(instance_create_layer(x + lengthdir_x(20,image_angle),y + lengthdir_y(20,image_angle),"Bullets", obj_Bullet))
	{
		bulletSpeed = 15;
		direction = other.image_angle + random_range(-max(3/obj_Player.accuracyMod,1), max(3/obj_Player.accuracyMod,1));
		image_angle = direction;
	}
}
