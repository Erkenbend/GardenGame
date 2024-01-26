/// @description Insert description here
// You can write your code in this editor

//ToDo make autoadjust to room list?
if(room == rm_level_0 || room == rm_level_1) {
	if(ref_music == undefined || !audio_is_playing(ref_music)) {
		//ref_music = audio_play_sound(global.music.songs[irandom(0)], 1, true, global.music.music_gain)
		ref_music = audio_play_sound(snd_garden_theme_2, 1, true, global.music.music_gain)
	}

}
