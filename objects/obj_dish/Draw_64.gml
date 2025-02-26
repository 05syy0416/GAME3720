
//Creating progress bar above the dish
if (washing) {
	// Calculate progress froom 0.0 to 1.0
	var progress = wash_timer / max_wash_time;
	
	//Draw progress bar above the dish
	var bar_width = 50;
	var bar_height = 5;
	var bar_x = x;
	var bar_y = y - 20;
	
	draw_set_color(c_black);
	draw_rectangle(bar_x - bar_width/2, bar_y, bar_x + bar_width/2, bar_y + bar_height, false);
	
	draw_set_color(c_green);
    draw_rectangle(bar_x - bar_width/2, bar_y, bar_x - bar_width/2 + (bar_width * progress), bar_y + bar_height, false);
	
}

