/// @description Insert description here
// You can write your code in this editor
if (state = StateChasing)
{
	recoilTimer = 15;
	recoilDirectionX = sign(x - other.x);
	recoilDirectionY = sign(y - other.y);
	state = StateRecoil;
	other.currentHP -= 1;
}

if (other.isGrowing) other.bonusDamage = 0;