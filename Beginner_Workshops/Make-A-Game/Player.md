# Cheat Sheet for `player_obj`

## Task

1. Your code has to move the player object according to keyboard input
2. Your code should spawn a bullet every time the space bar is pressed
3. Your code should detect when an enemy crashes into you and set `global.gameover = true;`
4. Your code should prevent the player from leaving the screen


## Useful Funtions

* `x` and `y`

Two predefined read and write variables that corespond to the position of the object in the room.

* `+=` and `-=` (i.e.) `num += 5;`

This opperator will add or substract a given number from a variable

* `max(x1,x2,x3,...)` and `min(x1,x2,x3,...)`

returns the biggest or smallest parameter that was inputed into the function

* `instance_creat_depth(x,y,depth,obj);`

Creats the `obj` object at position `(x,y)`. A smaller depth means that it will be rendered over an object with bigger depth. 
(i.e.) object with depth -20 will be drawn over objct with depth 0. Set `depth = 0` by default.

* `keyboard_check(key);`

Returns `true` if the *key* is held down. Key is inputed as `vk_*nameOfKey*` example: space is `vk_space`

* `keyboard_check_pressed(key);`

very similar to `keyboard_check(key);` except it is only triggered when the key is pressed down at unlike the other function which will return true as long as the key is held down.

* `collison_circle(x,y,radius,obj,prec,notme);`

checks if the `obj` is colliding with the area established by a circle centered around `(x,y)` with a given `radius`. `prec` should be set 
as `false` and `notme` should be set to `true`


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

