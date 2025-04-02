// 移动速度
move_speed = 3;

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

// **待机状态**
if (!keyboard_check(vk_left) && !keyboard_check(vk_right) &&
    !keyboard_check(vk_up) && !keyboard_check(vk_down) &&
    !keyboard_check(ord("A")) && !keyboard_check(ord("D")) &&
    !keyboard_check(ord("W")) && !keyboard_check(ord("S"))) 
{
    image_index = 0; // 让机器人显示正面
}
