audio_sound_gain(sound_BossBGM, 0, 2000);
audio_stop_sound(sound_BossBGM);


audio_sound_gain(sound_ending, 0, 2000);
audio_stop_sound(sound_ending);



audio_play_sound(sound_ending, 100, true);

audio_sound_gain(sound_ending, 0, 0);

audio_sound_gain(sound_ending, 1, 2000);

