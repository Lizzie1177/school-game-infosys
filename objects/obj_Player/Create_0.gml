/// @description Insert description here
// You can write your code in this editor


maxHP = GameManager.maxHP;
moveSpd = GameManager.moveSpd;
reloadMod = GameManager.reloadMod;
fireRateMod = GameManager.fireRateMod;
maxClears = GameManager.maxClears;
dodgeDistance = GameManager.dodgeDistance;
dodgeCooldown = GameManager.dodgeCooldown;
dodgeTimer = GameManager.dodgeTimer;
accuracyMod = GameManager.accuracyMod;
extraProjectileMod = GameManager.extraProjectileMod;
hasRoomClearEvent = GameManager.hasRoomClearEvent
roomClearEvent = GameManager.roomClearEvent;
isFrail = GameManager.isFrail;
isGrowing = GameManager.isGrowing;
isBottomless = GameManager.isBottomless;

roomStartX = room_width / 2;
roomStartY = room_height / 2;

currentHP = maxHP;
currentClears = maxClears;


StateFree = function()
{
	
	//calculate movement
	var hmove = key_right - key_left;
	var vmove = key_down - key_up;

	hsp = hmove * moveSpd;
	vsp = vmove * moveSpd;

	if (canDodge) && (key_dodge)
	{
		canDodge = false;
		dodgeDirection = point_direction(0,0,key_right-key_left, key_down-key_up);
		dodgeSp = dodgeDistance / dodgeTimer;
		dodgeEnergy = dodgeDistance;
		state = StateDodge;
	}

	//Collision Wall
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






	//weapon switching
	if (next_weapon) && !(equippedWeapon = noone)
	{
		if(instance_exists(obj_Pistol))
		{
			instance_destroy(obj_Pistol);
			pistolEquipped = false;
			instance_create_layer(x,y,"Gun", equippedWeapon);
		}
		else
		{
			instance_destroy(equippedWeapon);
			pistolEquipped = true;
			instance_create_layer(x,y,"Gun", obj_Pistol);
		}
		
		
		show_debug_message("weapon equipped " + string(equippedWeapon));
	}
	else if (next_weapon)
	{
		show_debug_message("No weapon equipped");
	}


	x += hsp;
	y += vsp;
	
}

StateDodge = function()
{
	hsp = lengthdir_x(dodgeSp,dodgeDirection);
	vsp = lengthdir_y(dodgeSp,dodgeDirection);
	
	
	//Dodge trail
	with(instance_create_depth(x,y,depth+1,obj_Trail))
	{
		sprite_index = other.sprite_index;
		image_blend = c_grey;
		image_alpha = 0.7;
	}
	
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
	
	dodgeEnergy -= dodgeSp;
	if (dodgeEnergy <= 0)
	{
		vsp = 0;
		hsp = 0;
		state = StateFree;
		alarm[0] = dodgeCooldown;
	}
}

StateDead = function()
{
	sprite_index = spr_GameLogo;
}

state = StateFree;