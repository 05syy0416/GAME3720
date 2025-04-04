/*
// 误差范围
var tolerance = 40; 

// 操作区的正确放置位置 (6个正确的圆圈)
var correct_positions = [
    [267, 309], // 第一个圆圈
    [426, 230], // 第二个圆圈
    [602, 128], // 第三个圆圈
    [570, 382], // 第四个圆圈
    [747, 454], // 第五个圆圈
    [887, 363]  // 第六个圆圈
];

// 对应底部方框的坐标
var red_button_positions = [
    [248, 649], // 第一个方框
    [429, 651], // 第二个方框
    [576, 646], // 第三个方框
    [715, 654], // 第四个方框
    [873, 647], // 第五个方框
    [1019, 664] // 第六个方框
];

// 初始化 start_x 和 start_y，防止放置失败时回不去
if (!variable_instance_exists(id, "start_x")) {
    start_x = x;
    start_y = y;
}

// 找到最近的正确位置
var closest_index = -1;
var min_dist = tolerance;

for (var i = 0; i < array_length(correct_positions); i++) {
    var dist = point_distance(x, y, correct_positions[i][0], correct_positions[i][1]);
    if (dist < min_dist) {
        min_dist = dist;
        closest_index = i;
    }
}

// 如果放置成功
if (closest_index != -1) {
    x = correct_positions[closest_index][0];
    y = correct_positions[closest_index][1];

    // 检查该位置是否已有音符
    var red_at_target = instance_position(
        red_button_positions[closest_index][0], 
        red_button_positions[closest_index][1], 
        obj_music_redbutton
    );

    if (red_at_target == noone) { 
        var new_button = instance_create_layer(
            red_button_positions[closest_index][0], 
            red_button_positions[closest_index][1], 
            "Instances", 
            obj_music_redbutton
        );
        new_button.visible = true; // 让音符可见
        new_button.placed = true;  // 标记已放置
    }
} else {
    // 如果放错位置，回到原来的地方
    x = start_x;
    y = start_y;
}
*/