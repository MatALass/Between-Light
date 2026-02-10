// Musique de fond (à adapter au nom de ton sound)
if (!audio_is_playing(mus_level)) {
    audio_play_sound(mus_level, 1, true); // priority=1, loop=true
}
