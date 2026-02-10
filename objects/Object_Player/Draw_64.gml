if (lore_timer > 0) {
    lore_timer--;

    var bx = display_get_gui_width() * 0.5;
    var by = display_get_gui_height() * 0.25;

    var bob = sin(current_time / 120) * 4;

    draw_set_alpha(0.9);
    draw_set_colour(c_black);
    draw_roundrect(bx - 220, by - 40 + bob, bx + 220, by + 40 + bob, false);

    draw_set_colour(c_white);
    draw_text(bx - 200, by - 12 + bob, lore_text);

    draw_set_alpha(1);
}
