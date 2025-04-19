// 生成 5 块 dirt 随机位置
for (var i = 0; i < 5; i++) {
    var dirt = instance_create_layer(irandom_range(100, 1200), irandom_range(100, 600), "Instances", obj_dirt);
}
global.dirt_cleaned = 0;
