if (!placed) {
    selected = true;
    audio_play_sound(sound_loop, 1, false); // Play the corresponding loop preview
}

if (!placed) {
    selected = true;

    // ✅ Ensure `sound_loop` is valid before playing
    if (variable_instance_exists(id, "sound_loop")) {
        audio_play_sound(sound_loop, 1, false);
    } else {
        show_message("Error: sound_loop is not assigned!");
    }
}