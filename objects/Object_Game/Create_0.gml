// Liste des niveaux (rooms) dans l'ordre
global.levels = [
    Room_Level1,
    Room_Level2,
    Room_Level3,
    Room_Level4,
    Room_Level5,
    Room_Level6,
    Room_Level7,
    Room_Level8,
    Room_Level9,
    Room_Level10
];

// Trouver l'index du niveau actuel
global.level_index = 0;
for (var i = 0; i < array_length(global.levels); i++) {
    if (global.levels[i] == room) {
        global.level_index = i;
        break;
    }
}
