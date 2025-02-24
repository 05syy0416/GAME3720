// 按 "E" 洗碗
if (place_meeting(x, y, obj_robot) && keyboard_check(ord("E")) && !cleaned) {
    wash_progress += wash_speed;
    instance_create_layer(x, y, "Instances", obj_bubbles); // 显示泡泡
}

// 进度限制
wash_progress = clamp(wash_progress, 0, max_progress);

// 如果洗完，移动到右侧
if (wash_progress >= max_progress && !cleaned) {
    x = 500; // 右边位置
    cleaned = true;
    instance_destroy(obj_bubbles); // 移除泡泡

    // 通知小游戏计数+1
    with (obj_wash_minigame) {
        dishes_cleaned += 1;
    }
}
