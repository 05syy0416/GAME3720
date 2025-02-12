// 变量定义
var wash_progress = 0;
var wash_speed = 2;
var max_progress = 100;

// 让玩家按 E 逐渐清洗
if (keyboard_check_pressed(ord("E"))) {
    wash_progress += wash_speed;
}

// 限制最大进度
wash_progress = clamp(wash_progress, 0, max_progress);

// 如果洗完了，触发剧情
if (wash_progress >= max_progress) {
    show_message("洗碗完成！"); 
    instance_destroy(); // 移除小游戏
}
