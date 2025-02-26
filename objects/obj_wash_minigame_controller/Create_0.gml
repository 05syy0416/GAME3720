//Setting up Variables

//Set Background
image_background = spr_wash_background;

//Is Mini Game Active? 
minigame_active = true;

//Reset Mini-Game
dishes_remaining = 4;


//Creating Dishes
var screen_width = display_get_width();
var screen_height = display_get_height();

// Ensure the GUI layer exists before creating objects
if (!layer_exists("GUI")) {
    layer_create("GUI", layer_type_instances);
}

// Adjust dish positions relative to the screen size
var dish_positions = [
    [screen_width * 0.3, screen_height * 0.4], 
    [screen_width * 0.35, screen_height * 0.5],
    [screen_width * 0.25, screen_height * 0.6],
    [screen_width * 0.32, screen_height * 0.7]
];

// Spawn the dishes
show_message("Creating dishes..."); // ✅ Debug message

for (var i = 0; i < 4; i++) {
    var pos = dish_positions[i];
    var new_dish = instance_create_layer(pos[0], pos[1], "GUI", obj_dish);
    
    show_message("Dish created at X=" + string(pos[0]) + " Y=" + string(pos[1])); // ✅ Debug message
}
