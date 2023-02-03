//Keybind checks

hsp = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vsp = keyboard_check(ord("S")) - keyboard_check(ord("W"));








x += hsp*moveSpd
y += vsp*moveSpd
