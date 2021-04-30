ds_list_shuffle(full_names);

var t = get_timer();

quicksort(full_names);

if (keyboard_check_pressed(vk_space)) {
    for (var i = 0; i < 200; i++) {
        show_debug_message(full_names[| i])
    }
}

frames++;
total_time_ms += (get_timer() - t) / 1000;