x += spd * dir;

// demi-tour aux limites
if (x > start_x + range) dir = -1;
if (x < start_x - range) dir = 1;
