/// @description Insert description here
// You can write your code in this editor

if(!playerHit)
{
	recoilTimer = 15;
	recoilDirectionX = sign(x - other.x);
	recoilDirectionY = sign(y - other.y);
	state = StateRecoil;
	other.currentHP -= damage;
	playerHit = true;
	if (other.isGrowing) other.bonusDamage = 0;
	if (other.isGrowing) other.growingCounter = 0;
}