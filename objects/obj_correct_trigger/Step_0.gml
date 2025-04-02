/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_sound_button) {
	inst = instance_place(x,y,obj_sound_button);
	if inst.correct == correct {
		done = true;
	}
	else done = false;
}
else done = false;