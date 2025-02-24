if (place_meeting(x, y, obj_robot) && keyboard_check_pressed(ord("E"))) {
    show_debug_message("创建洗碗小游戏实例！");

    // 获取当前视图的中心位置
    var ui_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
    var ui_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

    // 创建洗碗小游戏实例
    var mini_game = instance_create_depth(ui_x, ui_y, -100, obj_wash_minigame);
    
    // 确保小游戏可见
    mini_game.visible = true;

    show_debug_message("洗碗小游戏创建成功！位置：" + string(ui_x) + "," + string(ui_y));
}
show_debug_message("Camera X: " + string(camera_get_view_x(view_camera[0])) + " Y: " + string(camera_get_view_y(view_camera[0])));
