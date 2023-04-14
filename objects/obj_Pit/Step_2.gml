/// @description Insert description here
// You can write your code in this editor

if (playerCollision)
{
	if (obj_Player.isGrowing) obj_Player.bonusDamage = 0;
	if (obj_Player.isGrowing) obj_Player.growingCounter = 0;
	if (obj_Player.vsp = 0 && obj_Player.hsp = 0)
	{
		obj_Player.state = obj_Player.StateFalling;
		pitTimer--;
		if (pitTimer <=0)
		{
			obj_Player.x = obj_Player.roomStartX;
			obj_Player.y = obj_Player.roomStartY;
			obj_Player.currentHP--;
			obj_Player.state = obj_Player.StateFree;
		}
	}
}
else
{
	pitTimer = 25;
}