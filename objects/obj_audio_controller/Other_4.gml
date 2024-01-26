/// @description Insert description here
// You can write your code in this editor

//ToDo make autoadjust to room list?
if(room == rm_level_0 || room == rm_level_1) {
	if(ref_music == undefined || !audio_is_playing(ref_music)) {
		ref_music = audio_play_sound(global.music.music[irandom(array_length(global.music.music)-1)], 1, true, global.music.music_gain)
		//ref_music = audio_play_sound(snd_garden_theme_2, 1, true, global.music.music_gain)
	}
	
	if(ref_ambiente == undefined || !audio_is_playing(ref_ambiente)) {
		ref_ambiente = audio_play_sound(global.music.ambiente[irandom(array_length(global.music.ambiente)-1)], 1, true, global.music.ambiente_gain)
		//ref_ambiente = audio_play_sound(snd_ambiente, 1, true, global.music.music_gain)
	}
}
