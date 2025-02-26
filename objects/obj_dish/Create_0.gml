// Assign the dish sprite
sprite_index = spr_dish;
image_alpha = 1; // ensures we can see it

// Ensure the image is visible
image_alpha = 1;
image_xscale = 0.05; // Adjust as needed
image_yscale = 0.05; // Adjust as needed


// ✅ Ensure the dish is in the correct layer
layer = layer_get_id("GUI");

// ✅ Move it to the front
depth = -1000;

// Positioning variables
x_start = x;
y_start = y;
washed = false;
washing = false;
wash_timer = 0;
max_wash_time = 120; // ~2 seconds











//Old Code

/*
wash_progress = 0;
wash_speed = 2;
max_progress = 100;
cleaned = false;

// 随机选择 4 种碗的 `image_index`
image_index = irandom_range(0, 3);
*/