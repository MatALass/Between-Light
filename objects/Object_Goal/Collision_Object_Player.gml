// Passe au niveau suivant
global.level_index++;

if (global.level_index >= array_length(global.levels)) {
    // Fin du jeu : retourne au début (ou mets une room de fin)
    room_goto(Room_Level1);
} else {
    room_goto(global.levels[global.level_index]);
}
