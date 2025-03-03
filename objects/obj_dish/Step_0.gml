//if (washing) {
    //wash_timer -= 1; // ✅ Reduce timer each step

    if (wash_timer <= 0) && !done {
        done = true; // ✅ Stop washing when timer reaches 0

        // ✅ Move the dish to the right side of the sink
        x += 800; // ✅ Adjust this value depending on your sink’s layout
    }
//}

