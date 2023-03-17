/// @description Insert description here
// You can write your code in this editor
if (!GameManager.gamePaused)
{
	x = obj_Player.x;
	y = obj_Player.y + 16;

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	if (firingDelay > 0) firingDelay -= 1;
	if (reloadDelay > 0) reloadDelay -= delta_time;
	
	if (mouse_check_button(mb_left)) && (firingDelay <= 0)  && (reloadDelay <= 0)
	{
		if (obj_Player.currentAmmo > 2)
		{
			firingDelay = fireRate / obj_Player.fireRateMod;
			for(i = 0; i < 1 + obj_Player.extraProjectileMod;i++)
				{
				with(instance_create_layer(x + lengthdir_x(20,image_angle),y + lengthdir_y(20,image_angle),"Bullets", obj_Bullet))
					{
						bulletSpeed = 15;
						direction = other.image_angle + random_range(-max(other.innateAccuracy/obj_Player.accuracyMod,1), max(other.innateAccuracy/obj_Player.accuracyMod,1));
						image_angle = direction;
					}
				}
				alarm_set(0,burstRate);
			 if (!obj_Player.isBottomless) obj_Player.currentAmmo = obj_Player.currentAmmo - 3;
		}
	}
	
	if (keyboard_check_pressed(ord("R"))) && (reloadDelay <= 0) && (obj_Player.currentAmmo != obj_Player.maxAmmo)
	{
		reloadDelay = reloadTime / obj_Player.reloadMod * SECOND;
		obj_Player.currentAmmo = obj_Player.maxAmmo;
	}
}