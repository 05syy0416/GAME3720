window_set_cursor(cr_none);

for (var i = 12; i < 36; i++) {
    var btn = instance_create_depth(0, 0, 0, obj_soundbutton_3); // 先创建
    with (btn) {
        index = i; // 逐个分配 index，确保 0-5
    }
}
