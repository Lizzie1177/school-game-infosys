/// @description Insert description here
// You can write your code in this editor

currentHP = maxHP;
pounceCountdown = pounceTimer;

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
	
	//Horizontal Door
	if (place_meeting(x+hsp,y,obj_Door))
	{
		while(!place_meeting(x+sign(hsp), y, obj_Door))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical Door
	if (place_meeting(x,y+vsp,obj_Door))
	{
		while(!place_meeting(x, y+sign(vsp), obj_Door))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	
	//Horizontal Pit
	if (place_meeting(x+hsp,y,obj_Pit))
	{
		while(!place_meeting(x+sign(hsp), y, obj_Pit))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical
	if (place_meeting(x,y+vsp,obj_Pit))
	{
		while(!place_meeting(x, y+sign(vsp), obj_Pit))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	
	if (point_distance(x,y,obj_Player.x,obj_Player.y) < 200)
	{
		pounceSp = pounceDistance / pounceTimer;
		pounceEnergy = pounceDistance;
		state = StateReadyToPounce;
	}
	
	
	x += hsp;
	y += vsp;
}

StateStunned = function()
{
	
	hsp = 0;
	vsp = 0;
	
	x += hsp;
	y += vsp;
	--stunTimer;
	if (stunTimer <= 0)
	{
		stunTimer = 25;
		state = StateChasing;
	}
	
}

StatePounce = function()
{
	pounceCountdown = pounceTimer
	hsp = lengthdir_x(pounceSp,targetDirection);
	vsp = lengthdir_y(pounceSp,targetDirection);
	
	pounceEnergy -= pounceSp;
	
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
	
	
	//Horizontal Door
	if (place_meeting(x+hsp,y,obj_Door) && obj_Door.locked)
	{
		while(!place_meeting(x+sign(hsp), y, obj_Door))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical Door
	if (place_meeting(x,y+vsp,obj_Door) && obj_Door.locked)
	{
		while(!place_meeting(x, y+sign(vsp), obj_Door))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	x += hsp;
	y += vsp;
	
	if (pounceEnergy < 0)
	{
		hsp = 0;
		vsp = 0;
		state = StateChasing;
	}
	
}

StateReadyToPounce = function()
{
	hsp = 0;
	vsp = 0;
	
	targetDirection = point_direction(x,y,obj_Player.x,obj_Player.y);
	
	targetX = lengthdir_x(point_distance(x,y,obj_Player.x,y) * 2, targetDirection);
	targetY = lengthdir_y(point_distance(x,y,x,obj_Player.y) * 2, targetDirection);
	
	pounceCountdown--;
	
	if (pounceCountdown < 0)
	{
		pounceCountdown = pounceTimer;
		state = StatePounce;
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
	
		//Horizontal Door
	if (place_meeting(x+hsp,y,obj_Door) && obj_Door.locked)
	{
		while(!place_meeting(x+sign(hsp), y, obj_Door))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	//Vertical Door
	if (place_meeting(x,y+vsp,obj_Door) && obj_Door.locked)
	{
		while(!place_meeting(x, y+sign(vsp), obj_Door))
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
		playerHit = false
	}
}

state = StateChasing;