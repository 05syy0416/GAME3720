
// End Minigame
function end_minigame() {
	minigame_active = false;
	global.mini_game_active = false;
	instance_destroy(); // removes mini game UI
}