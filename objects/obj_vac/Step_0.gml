x = mouse_x;
y = mouse_y;

// 每帧检查：如果场上已经没有任何污点 obj_dirt，就切换到 rm_garden
if (instance_number(obj_dirt) == 0) {
    room_goto(rm_garden_1);
}
