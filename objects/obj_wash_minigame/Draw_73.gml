/// @description Insert description here
// You can write your code in this editor
if place_meeting(mouse_x,mouse_y,obj_dish) {
	inst = instance_place(mouse_x, mouse_y, obj_dish);
	audio_stop_all()
	audio_play_sound(SFX_Bubbles, 0, false)
	inst.wash_timer--;
	window_set_cursor(cr_none);
	draw_sprite_ext(spr_bubbles,0, mouse_x-50,mouse_y-50,.1,.1,0,c_white,1);	
	audio_play_sound(SFX_Dishes, 1, false)
}
else window_set_cursor(cr_arrow);