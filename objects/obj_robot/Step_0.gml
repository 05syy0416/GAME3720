// 机器人移动速度（避免内置变量冲突）
move_speed = 2; 

// 默认不移动
var moving = false;

// 移动控制 & 切换方向
if (keyboard_check(vk_left)) {
    x -= move_speed;
    if (sprite_index != spr_robot) sprite_index = spr_robot;
    image_index = 2; // 左
    moving = true;
}
if (keyboard_check(vk_right)) {
    x += move_speed;
    if (sprite_index != spr_robot) sprite_index = spr_robot;
    image_index = 3; // 右
    moving = true;
}
if (keyboard_check(vk_up)) {
    y -= move_speed;
    if (sprite_index != spr_robot) sprite_index = spr_robot;
    image_index = 1; // 后
    moving = true;
}
if (keyboard_check(vk_down)) {
    y += move_speed;
    if (sprite_index != spr_robot) sprite_index = spr_robot;
    image_index = 0; // 前
    moving = true;
}

// 站立时恢复默认前视角
if (!moving) {
    image_index = 0;
}

// 让动画播放更自然
if (moving) {
    image_speed = 0.2; // 让步行动画播放
} else {
    image_speed = 0; // 停止动画
}
