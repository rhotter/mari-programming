var spd = 5;

//player checks for keyboard input to move and shoot and makes sure he is in the game

if (keyboard_check(vk_left)){
	x -= spd;
}
if (keyboard_check(vk_right)){
	x += spd;
}

if (keyboard_check_pressed(vk_space)){
	instance_create_depth(x,y, -20 , bullet_obj);
}

x = max(x, 10);
x = min(x, room_width-10);

//player checks for loss condition
if (collision_circle(x,y+16,16, bad_obj, false, true)) {
	global.gameover = true;
}

