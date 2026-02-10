if (light_mode == "light") {
    draw_sprite(Sprite_Platform_Light, 0, x, y);
} else if (light_mode == "shadow") {
    draw_sprite(Sprite_Plaform_Shadow, 0, x, y);
} else {
    // both : tu peux choisir un sprite neutre, on met light pour test
    draw_sprite(Sprite_Platform_Both, 0, x, y);
}
