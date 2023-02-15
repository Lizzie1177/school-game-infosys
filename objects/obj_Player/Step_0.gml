if (!GameManager.gamePaused)
{
	//Keybind checks

	// Get Player Inputs
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	next_weapon = mouse_wheel_up() || mouse_wheel_down();
	key_dodge = mouse_check_button_pressed(mb_right);

	state();

}