/// @description Insert description here
// You can write your code in this editor
with (obj_Player)
{
	if (isGrowing)
	{
		growingCounter +=1;
		if (growingCounter > 3) 
		{
			if (bonusDamage < 2) bonusDamage += 1;
			growingCounter = 0;
		}
	}
}