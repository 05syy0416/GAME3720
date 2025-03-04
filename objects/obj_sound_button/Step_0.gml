if (selected) {
    x = mouse_x;
    y = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
    selected = false;

    // ✅ Stop the sound when the button is released
    if (sound_instance != -1) {
        audio_stop_sound(sound_instance);
        sound_instance = -1; // Reset the instance ID
    }

    // ✅ Check if dropped onto a valid sound slot
    var target = instance_position(x, y, obj_sound_slot);
    if (target) {
        if (!target.filled) { // ✅ Only allow placement if the slot is empty
            x = target.x;
            y = target.y;
            placed = true;
            target.loop_id = loop_id; // ✅ Assign the loop to the slot
            target.filled = true; // ✅ Mark slot as occupied
        } else {
            // Reset if the slot is already occupied
            x = original_x;
            y = original_y;
        }
    } else {
        // ✅ Reset position if dropped outside a valid slot
        x = original_x;
        y = original_y;
    }
}
