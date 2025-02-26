
//Defines all the dishes
var dish_sprites = [spr_dish1, spr_dish2, spr_dish3, spr_dish4];

//chooses dishes randomly. Written like this in case we wanted to add more
sprite_index = dish_sprites[irandom(array_length(dish_sprites) - 1)]



//start position (left side of the sink)
x_start = x;
y_start = y;
washed = false;
washing = false;
wash_timer = 0;
max_wash_time = 120; //~2 seconds















//Old Code

/*
wash_progress = 0;
wash_speed = 2;
max_progress = 100;
cleaned = false;

// 随机选择 4 种碗的 `image_index`
image_index = irandom_range(0, 3);
*/