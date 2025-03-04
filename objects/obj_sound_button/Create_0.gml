
// Store the original position
original_x = x;
original_y = y;
selected = false;
placed = false;

// ✅ Define the available sound loops
var loops = [Part1_Guitar_Chops_150, Part1_Vocal_Chop_150, Part1_Kicks_150, Part1_Sub_Bass_150, Part1_Snare_150, Part1_Celeste_Plucks_150];

// ✅ Only assign `loop_id` if it hasn't been set manually
if (!variable_instance_exists(id, "loop_id")) {
    loop_id = instance_number(obj_sound_button) - 1; // ✅ Assign unique ID based on placement order
}

// ✅ Ensure `loop_id` is within range before assigning `sound_loop`
if (loop_id >= 0 && loop_id < array_length(loops)) {
    sound_loop = loops[loop_id]; // Assign sound based on loop_id
} else {
    show_message("Error: loop_id out of range! Value = " + string(loop_id));
    sound_loop = snd_loop_1; // Default to prevent errors
}

// ✅ Ensure `loop_id` is within the correct range
if (loop_id < 0 || loop_id > 5) {
    show_message("Error: Invalid loop_id for button! Value = " + string(loop_id));
    instance_destroy(); // ✅ Delete the button if the ID is invalid
}








// ✅ Assign a unique sprite based on loop_id
var button_sprites = [spr_music_button1, spr_music_button2, spr_music_button3, spr_music_button4, spr_music_button5, spr_music_button6];
sprite_index = button_sprites[loop_id]; // ✅ Each button gets a different sprite

// ✅ Scale to 20% size
image_xscale = 0.2;
image_yscale = 0.2;




sound_instance = -1; // ✅ Initialize to avoid undefined errors

show_message("Button Created - Loop ID: " + string(loop_id) + " | Sprite: " + string(sprite_index));
