audio_sound_gain(sound_normBGM, 0, 2000);
if(audio_sound_get_gain(sound_normBGM) < 0){
	audio_stop_sound(sound_normBGM);

}

audio_sound_gain(sound_BossBGM, 0, 2000);
if(audio_sound_get_gain(sound_BossBGM) < 0){
	audio_stop_sound(sound_BossBGM);
	
}


audio_play_sound(sound_normBGM, 100, true);

audio_sound_gain(sound_normBGM, 0, 0);

audio_sound_gain(sound_normBGM, 1, 2000);
