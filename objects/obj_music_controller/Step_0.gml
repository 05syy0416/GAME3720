var correct_order = [2, 4, 1, 3, 5, 0]; // ✅ The correct sequence

// ✅ Count filled slots and store their order
var filled_slots = 0;
var user_order = [];

with (obj_sound_slot) {
    if (loop_id != -1) { // ✅ Only count slots with a placed sound
        filled_slots++;
        user_order[array_length(user_order)] = loop_id;
    }
}

// ✅ Only check order when all slots are filled
if (filled_slots == 6) {
    if (array_equals(user_order, correct_order)) {
        show_message("✅ Correct Order! Playing song...");
        play_composition();
    } else {
        show_message("❌ Incorrect Order! Try again.");
    }
}
