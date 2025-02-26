
// Creating GUI Event
if (minigame_active) {
	var screen_width = display_get_width();
	var screen_height = display_get_height();

    // Force the background to exactly match the screen size
    draw_sprite_stretched(image_background, 0, 0, 0, screen_width, screen_height);
}


