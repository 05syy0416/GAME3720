// 如果所有碗洗完，结束小游戏
if (dishes_cleaned >= 4) {
    show_message("所有碗都洗干净了！");
    instance_destroy();  // 关闭小游戏
}
