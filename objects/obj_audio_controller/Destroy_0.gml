/// @description Insert description here
// You can write your code in this editor

if(ref_music != undefined && audio_is_playing(ref_music)){
	audio_stop_sound(ref_music)
	ref_music = undefined
}

if(ref_ambiente != undefined && audio_is_playing(ref_ambiente)){
	audio_stop_sound(ref_ambiente)
	ref_ambiente = undefined
}

