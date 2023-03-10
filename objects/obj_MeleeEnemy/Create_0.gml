/// @description Insert description here
// You can write your code in this editor

currentHP = maxHP;


StateChasing = function()
{
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

StateStunned = function()
{
	
	hsp = 0;
	vsp = 0;
	
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
	--stunTimer;
	if (stunTimer <= 0)
	{
		stunTimer = 25;
		state = StateChasing;
	}
	
}

StateSpawn = function()
{
	
}

StateRecoil = function()
{
	var hmove = recoilDirectionX;
	var vmove = recoilDirectionY;
	
	hsp = hmove * moveSpd*2;
	vsp = vmove * moveSpd*2;

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
	
	--recoilTimer
	if (recoilTimer <= 0)
	{
		state = StateStunned;
	}
}

state = StateChasing;