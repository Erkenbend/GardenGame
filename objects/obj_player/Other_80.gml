/// @description Insert description here
// You can write your code in this editor

var _sound_id, _asset_id, _was_stopped
_sound_id = async_load[? "sound_id"]
_asset_id = async_load[? "asset_id"]
_was_stopped = async_load[? "was_stopped"]


if(_sound_id == ref_snd_bag)
{
	audio_play_sound(global.sfx.throw_compost[irandom(4)], 0, false, 1 * global.music.sound_effects_gain)
}
