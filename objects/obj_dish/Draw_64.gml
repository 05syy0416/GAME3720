if (global.washing) {
    var progress = wash_timer / max_wash_time; // ✅ Calculate progress (0 to 1)

    // ✅ Set the position for the progress bar relative to the dish
    var bar_width = 50;
    var bar_height = 6;
    var bar_x = x; // ✅ Use the dish's X position
    var bar_y = y - sprite_get_height(sprite_index) / 2 - 10; // ✅ Position above the dish

    // ✅ Draw progress bar background
    draw_set_color(c_black);
    draw_rectangle(bar_x - bar_width / 2, bar_y, bar_x + bar_width / 2, bar_y + bar_height, false);

    // ✅ Draw progress (shrinking green bar)
    draw_set_color(c_lime);
    draw_rectangle(bar_x - bar_width / 2, bar_y, bar_x - bar_width / 2 + (bar_width * progress), bar_y + bar_height, false);
}
