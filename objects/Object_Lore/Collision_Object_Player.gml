draw_set_font(Font_UI);

if (give_double_jump) {
    other.has_double_jump = true;
    give_double_jump = false; // pour pas le redonner
}

// (optionnel) afficher le texte
other.lore_text = text;
other.lore_timer = 300;
audio_play_sound(mus_lore, 5, false, 0.6); // 🔊 son de mort


// (optionnel) supprimer le lore après
instance_destroy();
