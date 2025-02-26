draw_self(); // Draw the sprite normally

// Debug: Draw a red circle to make sure dishes exist
draw_set_color(c_red);
draw_circle(x, y, 10, false);

// Debug: Display dish position
draw_set_color(c_white);
draw_text(x, y - 15, "Dish Here");
