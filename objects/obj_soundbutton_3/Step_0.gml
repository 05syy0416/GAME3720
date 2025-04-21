// 🔍 检测鼠标是否悬停
// 初始化拖动状态（在 Create 事件中）
// dragging = false;
// hover_played = false;
// default_volume1 = 0.2;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
    dragging = true;
}

if (dragging) {
    x = mouse_x;
    y = mouse_y;
    
    if (!hover_played) {
        snd_id = audio_play_sound(my_sound, 1, true); // 'true' = looped
        audio_sound_gain(snd_id, default_volume1, 0);
        hover_played = true;
    } else {
        // Update volume if needed
        audio_sound_gain(snd_id, default_volume1, 0);
    }

    // 停止拖动时
    if (mouse_check_button_released(mb_left)) {
        dragging = false;
        if (hover_played) {
            audio_stop_sound(snd_id); // stops only the specific sound
            hover_played = false;
        }
    }
}


inst = instance_place(x,y,obj_correct_trigger_minigame3);
if inst != noone done = inst.done;
else done = false;