// Liste des niveaux (rooms) dans l'ordre
global.levels = [
    Room_Level1,
    Room_Level2,
    Room_Level3,
    Room_Level4,
    Room_Level5
];

// Trouver l'index du niveau actuel
global.level_index = 0;
for (var i = 0; i < array_length(global.levels); i++) {
    if (global.levels[i] == room) {
        global.level_index = i;
        break;
    }
}

in_shadows = false;

bg_light  = Sprite_Background_Shadow;
bg_shadow = Sprite_Background_Light;

// Récupère l'ID du layer puis l'ID de l'élément background dans ce layer
var layer_id = layer_get_id("Background");
bg_element_id = layer_background_get_id(layer_id);

// Sprite de départ
layer_background_sprite(bg_element_id, bg_light);

audio_play_sound(mus_level, 1, true, 0.2);
