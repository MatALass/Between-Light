if (lore_timer > 0) {
    lore_timer--;

    var bx = display_get_gui_width() * 0.5;
    var by = display_get_gui_height() * 0.75; // plus bas

    var bob = sin(current_time / 120) * 4;

    var padding = 20;
    var max_text_width = 380;

    var text_w = string_width_ext(lore_text, -1, max_text_width);
    var text_h = string_height_ext(lore_text, -1, max_text_width);

    var box_w = text_w + padding * 2;
    var box_h = text_h + padding * 2;

    draw_set_alpha(0.9);
    draw_set_colour(c_black);
    draw_roundrect(
        bx - box_w * 0.5,
        by - box_h * 0.5 + bob,
        bx + box_w * 0.5,
        by + box_h * 0.5 + bob,
        false
    );

    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text_ext(
        bx,
        by + bob,
        lore_text,
        -1,
        max_text_width
    );

    // reset pour éviter les effets de bord
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}


