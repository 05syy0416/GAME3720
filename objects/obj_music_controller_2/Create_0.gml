for (var asdf = 6; asdf <= 24; asdf++) {
	var btn_mg2 = instance_create_depth(0, 0, 0, obj_soundbutton_2); // 先创建
    with (btn_mg2) {
        index = asdf; // 逐个分配 index，确保 0-5
    }
}
