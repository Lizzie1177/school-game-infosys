/// @description Insert description here
// You can write your code in this editor
with(instance_create_layer(x + lengthdir_x(20,image_angle),y + lengthdir_y(20,image_angle),"Bullets", obj_Bullet))
				{
					bulletSpeed = 15;
					direction = other.image_angle + random_range(-1, 1);
					image_angle = direction;
				}
				--obj_Player.currentAmmo;