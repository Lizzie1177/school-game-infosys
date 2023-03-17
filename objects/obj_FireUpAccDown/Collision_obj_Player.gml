/// @description Insert description here
// You can write your code in this editor
other.fireRateMod = other.fireRateMod * 1.2;
if (other.accuracyMod * 0.75 > 0.25) other.accuracyMod = other.accuracyMod * 0.75;
else other.accuracyMod = 0.25;
// Inherit the parent event
event_inherited();

