/// @description Insert description here
// You can write your code in this editor

if (!GameManager.gamePaused)
{
	state();
	if (currentHP <= 0) instance_destroy();
}