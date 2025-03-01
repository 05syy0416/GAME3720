/*    --Code for Dynamic Plate Spawning

//Getting Room Size

var screen_width = room_width;
var	screen_height = room_height;

//define dish position

var dish_positions = [
	[screen_width * 0.3, screen_height *0.4]
	[screen_width * 0.35, screen_height *0.5]
	[screen_width * 0.25, screen_height *0.6]	
	[screen_width * 0.32, screen_height *0.7]	
];

//Spawn dishes in new room

for(var i = 0; i < 3; i++ ) {
	
	var pos = dish_positions[i];
	var new_dish = instance_create_layer(pos[0],pos[1],"Instances", obj_dish)
	
	new_dish = -1000; //stays above background
	
}

*/


//Exit Minigame
if (keyboard_check_pressed(vk_escape)){
	
	global.mini_game_active = false;
	
}


