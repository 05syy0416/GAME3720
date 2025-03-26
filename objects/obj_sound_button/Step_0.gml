// 🔍 检测鼠标是否悬停
if (position_meeting(mouse_x, mouse_y, self)) {
    if (!hover_played) {
        // 🎵 播放音乐并存储播放 ID
        snd_id = audio_play_sound(my_sound, 1, false);
        audio_sound_gain(snd_id, global.default_volume, 0); // 降低音量
        hover_played = true;
    }
} else {
    // 🔇 鼠标移开时停止播放音乐
    if (hover_played) {
        audio_stop_sound(my_sound);
        hover_played = false;
    }
}


// 🔇 按 M 键静音/恢复音量
if (keyboard_check_pressed(ord("M"))) {
    if (global.default_volume > 0) {
        global.default_volume = 0; // 静音
    } else {
        global.default_volume = 0.2; // 恢复音量
    }
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
    dragging = true;
}

if (dragging) {
    x = mouse_x;
    y = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
    dragging = false;

    // 检测是否在大圆圈内
    if (position_meeting(x, y, obj_music_controller)) {
        placed = true;
        x = target_x; // 停在正确位置
        y = target_y;
        
        // 触发音符显示
        instance_create_layer(target_x, target_y, "Instances", obj_music_redbutton);
    }
}
inst = instance_place(x,y,obj_correct_trigger);
if inst != noone done = inst.done;
else done = false;