music_queue = []; // Stores the sequence of sounds
current_note_index = 0;


function play_song() {
    music_queue = []; // Reset queue

    // Collect the sounds based on placed note order
    with (obj_sound_slot) {
        music_queue[array_length(music_queue)] = get_sound(note_id);
    }

    current_note_index = 0;
    play_next_note();
}

function play_next_note() {
    if (current_note_index < array_length(music_queue)) {
        audio_play_sound(music_queue[current_note_index], 1, false);
        alarm[0] = sound_get_length(music_queue[current_note_index]) * room_speed;
    }
}

// ✅ Get all instances of obj_sound_button
var buttons = array_create(0);

with (obj_sound_button) {
    array_push(buttons, id);
}

// ✅ Ensure we have exactly six buttons
if (array_length(buttons) > 6) {
    show_debug_message("Error: Too many buttons! Destroying extras.");
    while (array_length(buttons) > 6) {
        instance_destroy(buttons[array_length(buttons) - 1]);
        array_pop(buttons);
    }
}

// ✅ Assign unique loop_id to each button
for (var i = 0; i < array_length(buttons); i++) {
    buttons[i].loop_id = i; // ✅ Assign loop_id (0-5)
    show_debug_message("Assigned loop_id: " + string(i) + " to button ID: " + string(buttons[i]));
}

