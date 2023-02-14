/// @description Insert description here
// You can write your code in this editor
if (!GameManager.gamePaused)
{
	x = obj_Player.x;
	y = obj_Player.y + 16;

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	firingDelay -= 1;
	if (mouse_check_button_pressed(mb_left)) && (firingDelay < 0)
	{
	
		firingDelay = fireRate * obj_Player.fireRateMod;
		with(instance_create_layer(x + lengthdir_x(20,image_angle),y + lengthdir_y(20,image_angle),"Bullets", obj_Bullet))
		{
			bulletSpeed = 15;
			direction = other.image_angle + random_range(-2, 2);
			image_angle = direction;
		}
	}
}