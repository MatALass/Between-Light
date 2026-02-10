if (mouse_check_button_pressed(mb_left)) {
    // anti-bug simple : on évite de switch si le player est dans une plateforme
    if (!place_meeting(Object_Player.x, Object_Player.y, Object_Platform)) {
        if (global.current_mode == "light") global.current_mode = "shadow";
        else global.current_mode = "light";
    }
}

if (keyboard_check_pressed(ord("E"))) {
    global.current_mode = (global.current_mode == "light") ? "shadow" : "light";
}
