/// @description Insert description here
// You can write your code in this editor
count = inst[0].done + inst[1].done + inst[2].done + inst[3].done + inst[4].done + inst[5].done;
if count >= 6 {
	audio_stop_all()	
	room_goto(rm_mv1);
}


