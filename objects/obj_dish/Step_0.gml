//if (washing) {
    //wash_timer -= 1; // ✅ Reduce timer each step

   // if (wash_timer <= 0) && !done {
       // done = true; // ✅ Stop washing when timer reaches 0

        // ✅ Move the dish to the right side of the sink
        //x += 800; // ✅ Adjust this value depending on your sink’s layout
    //}
//}

//if (!done) {
    //done = true;
  // global.dishes_cleaned += 1;// 记录清洗完的碗
//}
if (wash_timer <= 0) && !done {
    done = true;  // 标记碗已洗完
    global.dishes_cleaned += 1; // 确保使用全局变量
    x += 800;  // 移动碗的位置
}
