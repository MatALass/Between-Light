// vitesse
hsp = 0;
vsp = 0;

// réglages
walk_spd = 3;
jump_spd = -7;
grav = 0.35;

// Etat
dead = false;

has_double_jump = false;
can_double_jump = false;

facing = 1;      // 1 droite, -1 gauche
on_ground = false;

// Lore
lore_text = "";
lore_timer = 0;

// Sprites
spr_idle = Sprite_Player;
spr_run  = Sprite_Player_Right;
spr_jump = Sprite_Player_Jump_Right;

image_speed = 1;

// --- Spawn ---
// si un Object_Spawn existe, on spawn dessus
var sp = instance_find(Object_Spawn, 0);
if (sp != noone) {
    x = sp.x;
    y = sp.y;
}

// IMPORTANT : spawn par défaut = position actuelle (après le spawn)
spawn_x = x;
spawn_y = y;
