
// Creating GUI Event
if (minigame_active) {
    var center_x = display_get_width() / 2;
    var center_y = display_get_height() / 2;

    // Properly center the background
    draw_sprite(image_background, 0, center_x - sprite_width/2, center_y - sprite_height/2);

    // Display some debug UI text
    draw_set_halign(fa_center);
    draw_text(center_x, center_y - 100, "dish washing minigame");
}


