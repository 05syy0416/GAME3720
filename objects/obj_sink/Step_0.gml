// 检测机器人是否按下 'E' 并靠近水槽
if (place_meeting(x, y, obj_robot) && keyboard_check_pressed(ord("E"))) {
    // 触发洗碗小游戏
    instance_create_layer(x, y, "Instances", obj_wash_minigame);
}
