//loss put in place
if (global.gameover ==  true){
	instance_deactivate_all(true);
	instance_create_depth(room_width/2,room_height/2,0,gameover_obj);
	if (keyboard_check(vk_enter)){
		room_restart();
	}
} else { //spawns the bad guys
	if (random(100)<=global.difficulty){
		var xx = random_range(16,room_width-16);
		instance_create_depth(xx, 0 , 0, bad_obj);
	}
}

