/// @description Insert description here
// You can write your code in this editor

currentHP = maxHP;
shootTimer = shootCooldown;

StateChasing = function()
{
	if (abs(point_distance(x,y,obj_Player.x,obj_Player.y)) <  stopRange)
	{
		state = StateShooting;
	}
	
	var hmove;
	//calculate movement
	if (obj_Player.x < x)
	{
		 hmove = -1;
	}
	else if (obj_Player.x > x)
	{
		 hmove = 1;
	}
	else
	{
		hmove = 0;
	}
	
	var vmove;
	if (obj_Player.y < y)
	{
		vmove = -1;
	}
	else if (obj_Player.y > y)
	{
		vmove = 1;
	}
	else
	{
		vmove = 0;
	}

	hsp = hmove * moveSpd;
	vsp = vmove * moveSpd;

	//Collision
	//Horizontal
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		while(!place_meeting(x+sign(hsp), y, obj_Wall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical
	if (place_meeting(x,y+vsp,obj_Wall))
	{
		while(!place_meeting(x, y+sign(vsp), obj_Wall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	x += hsp;
	y += vsp;
}

StateShooting = function()
{
	if (abs(point_distance(x,y,obj_Player.x,obj_Player.y)) >  chaseRange)
	{
		state = StateChasing;
	}
	
	--shootTimer;
	if (shootTimer <= 0)
	{
		shootTimer = shootCooldown;
		
		with(instance_create_layer(x + lengthdir_x(20,point_direction(x,y,obj_Player.x,obj_Player.y)),y + lengthdir_y(20,point_direction(x,y,obj_Player.x,obj_Player.y)),"Bullets", obj_EnemyBullet))
				{
					bulletSpeed = 7;
					direction = point_direction(x,y,obj_Player.x,obj_Player.y) + random_range(-10, 10);
					image_angle = direction;
				}
		
	}
	
}

StateSpawn = function()
{
	
}

state = StateChasing;