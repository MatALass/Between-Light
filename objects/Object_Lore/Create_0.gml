// Si la variable n’existe pas encore, on met une valeur par défaut
if (!variable_instance_exists(id, "lore_sprite_choice")) {
    lore_sprite_choice = 0;
}

// Tableau des sprites
lore_sprites = [
    Sprite_Lore_Blue,
    Sprite_Lore_Red,
    Sprite_Lore_Yellow
];

// Appliquer le sprite choisi dans la room
sprite_index = lore_sprites[lore_sprite_choice];


// par défaut, ce lore ne donne rien
if (!variable_instance_exists(id, "give_double_jump")) {
    give_double_jump = false;
}
