audio_sound_gain(sound_normBGM, 0, 2000);
audio_stop_sound(sound_normBGM);


audio_sound_gain(sound_ending, 0, 2000);
audio_stop_sound(sound_ending);


audio_sound_gain(sound_BossBGM, 0, 2000);
audio_stop_sound(sound_BossBGM);

global.numFriendSave = 1;

audio_play_sound(sound_BossBGM, 100, true);

audio_sound_gain(sound_BossBGM, 0, 0);

audio_sound_gain(sound_BossBGM, 1, 2000);

global.bossActive = false




