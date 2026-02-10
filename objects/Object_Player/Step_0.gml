var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left  = keyboard_check(vk_left)  || keyboard_check(ord("A")) || keyboard_check(ord("Q"));

hsp = (right - left) * walk_spd;

if (hsp != 0) {
    facing = sign(hsp); // 1 droite, -1 gauche (crée facing dans Create si pas fait)
}

vsp += grav;

// --- SOL ? (avec active_now) ---
var p = instance_place(x, y + 1, Object_Platform);
on_ground = (p != noone) && p.active_now;

// --- SAUT (simple + double saut) ---
var jumpPressed =
    keyboard_check_pressed(vk_up)
    || keyboard_check_pressed(ord("Z"))
    || keyboard_check_pressed(ord("W"))
    || keyboard_check_pressed(vk_space);

// Quand on touche le sol : on recharge le double saut
if (on_ground) {
    can_double_jump = true;
}

if (jumpPressed) {
    if (on_ground) {
        vsp = jump_spd;
    }
    else if (has_double_jump && can_double_jump) {
        vsp = jump_spd;
        can_double_jump = false; // on consomme le double saut
    }
}


// COLLISION H
var pH = instance_place(x + hsp, y, Object_Platform);
if (pH != noone && pH.active_now) {
    while (!place_meeting(x + sign(hsp), y, Object_Platform) 
           || instance_place(x + sign(hsp), y, Object_Platform).active_now == false) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// COLLISION V
var pV = instance_place(x, y + vsp, Object_Platform);
if (pV != noone && pV.active_now) {
    while (true) {
        var pCheck = instance_place(x, y + sign(vsp), Object_Platform);
        if (pCheck != noone && pCheck.active_now) break;
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// --- RESPAWN FALL ---
if (y > room_height + 100) {
    x = spawn_x;
    y = spawn_y;
    hsp = 0;
    vsp = 0;
}

// --- ANIMATIONS ---
if (!on_ground) {
    sprite_index = Sprite_Player_Jump_Right;
    image_speed = 0; // si jump = 1 frame
}
else if (hsp != 0) {
    sprite_index = Sprite_Player_Right;
    image_speed = 1; // run animé
}
else {
    sprite_index = Sprite_Player;
    image_speed = 0; // idle fixe si 1 frame
}

// --- ORIENTATION (retourne le sprite) ---
image_xscale = (facing == 0) ? 1 : facing;

// --- MENU ---
if (keyboard_check_pressed(vk_escape)) {
    room_goto(Room_Menu);
}