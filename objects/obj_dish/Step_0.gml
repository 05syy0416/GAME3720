// 如果玩家按下E键并且鼠标在碗上，则清洗
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    cleaned = true;  // 记录这个碗已洗
    image_alpha = 0.5; // 让它变亮一点，表示洗干净了

    // 通知小游戏对象，碗被洗完
    with (obj_wash_minigame) {
        dishes_cleaned += 1;
    }
}
