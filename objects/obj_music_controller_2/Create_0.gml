for (var i = 0; i < 8; i++) {
    var btn = instance_create_depth(0, 0, 0, obj_soundbutton_2); // 先创建
    with (btn) {
        index = i; // 逐个分配 index，确保 0-5
    }
}
