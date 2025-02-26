//Setting up Variables

//Set Background
image_background = spr_wash_background;

//Is Mini Game Active? 
minigame_active = true;

//Reset Mini-Game
dishes_remaining = 4;


//Creating Dishes
var center_x = display_get_width() / 2;
var center_y = display_get_height() / 2;

// Adjusted positions for dishes (relative to the sink area)
var dish_positions = [
    [center_x - 150, center_y + 50], // Left sink positions
    [center_x - 130, center_y + 100],
    [center_x - 170, center_y + 150],
    [center_x - 140, center_y + 200]
];

// ✅ Spawn the dishes ONCE in the Create Event
for (var i = 0; i < 4; i++) {
    var pos = dish_positions[i];
    instance_create_layer(pos[0], pos[1], "GUI", obj_dish);
}

