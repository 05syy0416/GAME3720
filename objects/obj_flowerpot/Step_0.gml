if (place_meeting(x, y, obj_robot) && keyboard_check_pressed(ord("E"))) {
	
	if (!global.mini_game_active) {
		global.mini_game_active = true;
		room_goto(rm_muzik_puzzle_1);
	}// 进入音乐小游戏房间
}


