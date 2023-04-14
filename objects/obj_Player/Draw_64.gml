/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_Silver);
var hpHud = "HP : " + string(currentHP) + " / " + string(maxHP);
var ammoHud = "";
if (next_weapon != noone && !instance_exists(obj_Pistol)) ammoHud = "Ammo : " + string(currentAmmo) + " / " + string(maxAmmo);
else ammoHud = "";
draw_text(10,10,hpHud);
draw_text(RES_W - 125, RES_H-25, ammoHud)