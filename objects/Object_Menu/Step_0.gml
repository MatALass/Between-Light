mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

over_play = (mx > btn_play_x && mx < btn_play_x + btn_w && my > btn_play_y && my < btn_play_y + btn_h);
over_quit = (mx > btn_quit_x && mx < btn_quit_x + btn_w && my > btn_quit_y && my < btn_quit_y + btn_h);

if (mouse_check_button_pressed(mb_left)) {
    if (over_play) room_goto(Room_Level1);
    if (over_quit) game_end();
}
