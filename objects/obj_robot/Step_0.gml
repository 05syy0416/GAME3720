// 移动速度
move_speed = 2;

// 左右移动（支持方向键 & WASD）
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    x -= move_speed;
    image_index = 2; // 左
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    x += move_speed;
    image_index = 3; // 右
}

// 上下移动（支持方向键 & WASD）
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    y -= move_speed;
    image_index = 1; // 上
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    y += move_speed;
    image_index = 0; // 下
}
