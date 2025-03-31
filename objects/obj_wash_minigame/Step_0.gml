if (global.dishes_cleaned >= 4) {
    show_message("All the dishes are cleaned!！");
    instance_destroy();  // 关闭小游戏
    global.mini_game_active = false;  // 标记小游戏结束
	room_goto(rm_kitchen); //switching rooms when puzzle is complete
}
