// make them move properly
y+=dif;

//check for collisons and then distroy the bullet and set death to true and change sprite to explosion
if (collision_circle(x,y,16, bullet_obj, false, true)){
	instance_destroy(collision_circle(x,y,16, bullet_obj, false, true));
	sprite_index = explosion_spr;
	dead = true;
}


//loss conditions
if (y > room_height){
	global.gameover = true;
}


//wait a bit then distroy
if ((dead == true)){
	tm += 1;
	if (tm>5){
		instance_destroy(id);
	}
}

		