if (instance_exists(Object_Player)) {
    var p = Object_Player;

    var offset_x = 250; // perso un peu à gauche
    var offset_y = 0;   // centré en hauteur

    var tx = p.x - cam_w * 0.5 + offset_x;
    var ty = p.y - cam_h * 0.5 + offset_y;

    tx = clamp(tx, 0, room_width  - cam_w);
    ty = clamp(ty, 0, room_height - cam_h);

    camera_set_view_pos(view_camera[0], tx, ty);
}
