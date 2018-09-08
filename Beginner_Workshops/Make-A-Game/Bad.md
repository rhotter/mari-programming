# Cheat Sheet for `bad_obj`

## Task

1. Your code has to randomize the speed of the enemy ships (from 1 to `global.difficutly`)
2. Your code should move the ships down the screen at the random speed
3. Your code should detect the collision of a bullet with the enemey ship, delete the bullet, display the `explosion_spr` and then delete itself
4. Your code should detect if a enemy has passed by the player and set `global.gameover = false;`


## Useful Funtions

* `x` and `y`

Two predefined read and write variables that corespond to the position of the object in the room.

* `+=` and `-=` (i.e.) `num += 5;`

This opperator will add or substract a given number from a variable

* `instance_destroy(id);`

Destroys the instances (objects) with the given `id`. id can be obtained using the `collision circle();` function. To distroy itself simply write
`instance_destroy(id);` (leaving id will automatically assign the calling objects id to the funtion)

* `random_range(min,max); *and* `random(max);`

Returns a random integer `n` such that `min<=n<=max` or `0<=n<=max` respectivly

* `collison_circle(x,y,radius,obj,prec,notme);`

checks if the `obj` is colliding with the area established by a circle centered around `(x,y)` with a given `radius`. `prec` should be set 
as `false` and `notme` should be set to `true`. Returns the `id` of the object that caused the collision.

```
id = collision_circle(x,y,16, bullet_obj, false, true);
```

will save the id of the `bullet_obj` that triggered the collision to  the local variable `id`

* `sprite_index = *nameOfSprite` 

used to change the sprite associated to the object



## Variables and IFs

### Variables

#### local

A local variable is only accesible in the same peice of code (if defined in creat event it will not be accesible in step)

`var simon = 5;` is a local variable

#### local (type 2)

This type of variable is shared amongst all the code running for an individual object (is defined in creat it is accesible in step)

`bob = 5;` the `var` is ommited

#### Global

This varibale is shared amongst every object in the game

`global.karel = 7;` everytime you want to use this variable you have to write `global.****`

### IFs

An if statment allows us to run conditional stuff 

```
if (condition == true) {
  doSomething(); //runs if condition is met
} else {
  doSomethingElse(); //runs if condition is not met
}
```

note that if in the `condition` you write a function that returns true or false, GML will automatically assume that you only want the if to trigger if 
the function returns true. For example:

```
if (keyboard_check(vk_enter)){
  var rand = random(10);
}
```
if the enter key is pressed a local variable rand will be assigned a random number from 0 to 10



