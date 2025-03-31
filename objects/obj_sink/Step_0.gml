

function interact_with_wawsh_minigame() {
	if (!global.mini_game_active) {
		global.mini_game_active = true;
		room_goto(rm_dishwashing); //switching 
	}
	
}

if (place_meeting(x, y, obj_robot) && keyboard_check_pressed(ord("E"))) {
	
	interact_with_wawsh_minigame()
	
}	


//Old Code

/*
if (place_meeting(x, y, obj_robot) && keyboard_check_pressed(ord("E"))) {
    show_debug_message("创建洗碗小游戏实例！");
	

    var ui_x = display_get_gui_width() / 2;
    var ui_y = display_get_gui_height() / 2;

    show_debug_message("📍 视图中心位置：" + string(ui_x) + "," + string(ui_y));

    var mini_game = instance_create_depth(ui_x, ui_y, -1000, obj_wash_minigame);
    mini_game.depth = -1000;
    mini_game.visible = true;
	
	

    show_debug_message("🎉 洗碗小游戏创建成功！位置：" + string(mini_game.x) + "," + string(mini_game.y));
}

*/