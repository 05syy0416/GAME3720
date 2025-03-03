/// @description Insert description here
// You can write your code in this editor
if place_meeting(mouse_x,mouse_y,obj_dish) {
	inst = instance_place(mouse_x, mouse_y, obj_dish);
	inst.wash_timer--;
	window_set_cursor(cr_none);
	draw_sprite_ext(spr_bubbles,0, mouse_x-50,mouse_y-50,.1,.1,0,c_white,1);
}
else window_set_cursor(cr_arrow);