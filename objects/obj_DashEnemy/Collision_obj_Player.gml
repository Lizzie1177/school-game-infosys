/// @description Insert description here
// You can write your code in this editor

if(!playerHit)
{
	recoilTimer = 25;
	recoilDirectionX = sign(x - other.x);
	recoilDirectionY = sign(y - other.y);
	other.currentHP -= 1;
	state = StateRecoil;
	playerHit = true;
	if (other.isGrowing) other.bonusDamage = 0;
	if (other.isGrowing) other.growingCounter = 0;
}

