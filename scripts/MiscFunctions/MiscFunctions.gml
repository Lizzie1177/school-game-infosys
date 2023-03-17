function HealthOnRoomClear()
{
	if (obj_Player.currentHP + 1 < obj_Player.maxHP) obj_Player.currentHP++;
	else obj_Player.currentHP = obj_Player.maxHP;
	show_debug_message("HEALTH PROC");
}

function NoRoomClearEvent()
{
	
}