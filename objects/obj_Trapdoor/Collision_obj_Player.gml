/// @description Insert description here
// You can write your code in this editor
if (nextFloor = Room_MainMenu)
{
	instance_destroy(obj_Player);
	instance_destroy(par_Gun);
	if (!GameManager.OptionalCharacter1Unlocked) GameManager.OptionalCharacter1Unlocked = true;
	else if (!GameManager.OptionalCharacter2Unlocked) GameManager.OptionalCharacter2Unlocked = true;
	
	UpdateSave();
}
room_goto(nextFloor);