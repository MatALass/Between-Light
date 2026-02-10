btn_w = 280;
btn_h = 70;

btn_play_x = 500;
btn_play_y = 300;

btn_quit_x = 500;
btn_quit_y = 400;

mx = 0;
my = 0;
over_play = false;
over_quit = false;

// NE PAS appeler ça draw_button (chez toi c'est "réservé" / déjà pris)
btn_draw = function(_x, _y, _label) {
    var over = (mx > _x && mx < _x + btn_w && my > _y && my < _y + btn_h);

    draw_set_alpha(1);
    draw_set_colour(over ? c_white : c_gray);
    draw_roundrect(_x, _y, _x + btn_w, _y + btn_h, false);

    draw_set_colour(c_black);
    draw_text(_x + 90, _y + 22, _label);

    return over;
};
