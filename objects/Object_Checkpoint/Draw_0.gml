// Dessine seulement le haut du sprite (colonne + boule)
// Ajuste cloud_cut selon la hauteur de ton nuage
var cloud_cut = 18; // <- à régler

var sw = sprite_get_width(sprite_index);
var sh = sprite_get_height(sprite_index);

// On dessine la partie du sprite qui commence au-dessus du nuage
draw_sprite_part(sprite_index, image_index,
                 0, 0,  // src x,y
                 sw, sh - cloud_cut, // largeur, hauteur
                 x, y); // position
