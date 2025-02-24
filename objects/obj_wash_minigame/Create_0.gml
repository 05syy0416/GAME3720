// 记录当前洗的碗数
dishes_cleaned = 0;

// 定义四个碗的位置
var dish_positions = [
    [100, 300],  // 第一个碗
    [250, 300],  // 第二个碗
    [400, 300],  // 第三个碗
    [550, 300]   // 第四个碗
];

// **创建四个碗**
for (var i = 0; i < 4; i++) {
    var dish = instance_create_depth(x + dish_positions[i][0], y + dish_positions[i][1], -900, obj_dish);
    dish.index = i;  // 给每个碗编号
    dish.cleaned = false; // 记录是否已洗
}
