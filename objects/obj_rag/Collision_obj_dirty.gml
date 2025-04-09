// 擦到污渍后，替换成干净的窗户区域
instance_destroy(other); // 删除脏污

// 或者改为显示 obj_clean，比如在相同位置创建：
instance_create_layer(x, y, "Instances", obj_clean);
