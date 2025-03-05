// 遍历所有 obj_sound_button
with (obj_sound_button) {
    if (position_meeting(x, y, other)) {
        instance_create_depth(x, y, 0, obj_music_redbutton); // 生成红色音符
    }
}

if (place_meeting(x, y, obj_sound_button)) {
    instance_create_layer(x, y, "Instances", obj_music_redbutton);
}
