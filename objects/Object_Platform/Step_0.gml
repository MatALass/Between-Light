if (light_mode == global.current_mode || light_mode == "both") {
    visible = true;
    solid = true;
} else {
    visible = false;
    solid = false;
}

active_now = (light_mode == global.current_mode || light_mode == "both");

visible = active_now;
solid   = active_now;
