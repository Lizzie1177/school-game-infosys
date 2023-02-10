// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeleteSave()
{
	if(file_exists("save.txt"))
	{
		file_delete("save.txt");
	}
}

function ReadSave()
{

	if (file_exists("save.txt"))
	{	
		var _buffer = buffer_load("save.txt");
		var _string = buffer_read(_buffer, buffer_string);
		show_debug_message("Save Found! " + _string);
		var _loadData = json_parse(_string);
		
		show_debug_message(string(filename_path("save.txt")));
		show_debug_message("Is Optional Character Unlocked: " + string(_loadData.optionalCharacter1));
		//GameManager.OptionalCharacter1Unlocked = _loadData.optionalCharacter1;
		//GameManager.OptionalCharacter2Unlocked = _loadData.OptionalCharacter2;
	}
	else
	{
		var _saveData = 
		{
			optionalCharacter1 : false,
			optionalCharacter2 : false
		}
		var _string = json_stringify(_saveData);
		var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
		buffer_write(_buffer, buffer_string, _string);
		buffer_save(_buffer,"save.txt");
		buffer_delete(_buffer);
		show_debug_message("New Save Created!" + _string);
	}
}

function UpdateSave()
{
	var _saveData = 
	{
		optionalCharacter1 : GameManager.OptionalCharacter1Unlocked,
		optionalCharacter2 : GameManager.OptionalCharacter2Unlocked
	}
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer,"save.txt");
	buffer_delete(_buffer);
	show_debug_message("New Save Created!" + _string);

}