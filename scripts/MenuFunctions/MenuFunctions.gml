// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu (_x,_y,_options,_description = -1, _margin, _centered, _depthOffset = 0)
{
	depthOffset = -990 - _depthOffset
	with (instance_create_depth(_x,_y,depthOffset,obj_Menu))
	{
		//arguments
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hoverMarker = "* ";
		margin = _margin;


		
		
		//Set up size
		draw_set_font(font_Silver);
		
		width = 1;
		if (_description != -1) width = max(width, string_width(_description));
		for (var i =0; i < optionsCount; i++)
		{
			width = max(width, string_width(_options[i][0]));
		}
		width += string_width(hoverMarker);
		
		heightLine = 17;
		height = heightLine * ( optionsCount + !(description == -1));
		
		widthFull = width + _margin * 2;
		heightFull = height + _margin * 2;
		if (_centered)
		{
			x = room_width/2 - widthFull/2;
			y = room_height/2;	
		}
	}		
}

function MenuQuit()
{
	game_end();
}

function MenuClose()
{
	instance_destroy();	
}

function MainOptionsMenuClose()
{
	Menu(
	0,
	0,
	[
		["Start Game", StartGame],
		["Options", SpawnOptionMenu],
		["Quit Game", MenuQuit]
	],
	"Main Menu",
	12,
	true,

);
instance_destroy();
}

function SpawnOptionMenu()
{
		Menu(
		0,
		0,
		[
			["Delete Save", DeleteSave],
			["Close Menu", MainOptionsMenuClose]
		],
		"Options Menu",
		12,
		true
		)	
	instance_destroy();
}

function SpawnPauseMenu()
{
	Menu(
	0,
	0,
	[
		["Resume Game",PauseMenuClose],
		["Options", SpawnInGameOptionsMenu],
		["Quit Game",SpawnQuitMenu]
	],
	"Pause Menu",
	12,
	true)
	
}

function SpawnInGameOptionsMenu()
{
			Menu(
		0,
		0,
		[
			["Delete Save", DeleteSave],
			["Close Menu", ReSpawnPauseMenu]
		],
		"Options Menu",
		12,
		true
		)	
	instance_destroy();
}

function ReSpawnPauseMenu()
{
	SpawnPauseMenu();
	instance_destroy();
}

function PauseMenuClose()
{
	GameManager.gamePaused = false;
	instance_destroy();
}

function StartGame()
{
	ReadSave();
	instance_create_depth(room_width/4,room_height/3,depth,obj_Character1);
	instance_create_depth((room_width/4)*2,room_height/3,depth,obj_Character2);
	instance_create_depth((room_width/4)*3,room_height/3,depth,obj_Character3);
	instance_destroy();
}

function SpawnQuitMenu()
{
	Menu(
	0,
	0,
	[
		["Yes",game_end],
		["No", ReSpawnPauseMenu]
	],
	"Are you sure you want to quit?",
	12,
	true)
	instance_destroy();
}