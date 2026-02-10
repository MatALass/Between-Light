// Passe au niveau suivant
global.level_index++;

audio_play_sound(mus_goal, 5, false, 0.6); // 🔊 son de mort

if (global.level_index >= array_length(global.levels)) {
    // Fin du jeu : retourne au début (ou mets une room de fin)
    room_goto(Room_Level1);
} else {
    room_goto(global.levels[global.level_index]);
}
