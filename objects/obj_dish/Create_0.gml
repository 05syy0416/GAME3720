// Assign the dish sprite
sprite_index = spr_dish;

// Ensure the image is visible
image_alpha = 1;

// Move it to the front
depth = -1000;


//Adding Wash Progress
washing = false;
wash_timer = 0;
max_wash_time = 120; //total wash time about 2 sec
wash_timer = max_wash_time; //start timer
done =false;












//Old Code

/*
wash_progress = 0;
wash_speed = 2;
max_progress = 100;
cleaned = false;

// 随机选择 4 种碗的 `image_index`
image_index = irandom_range(0, 3);
*/