# Cheat Sheet for `control_obj`

## Task

1. Your code has to initialise the two global variables.
2. Your code should spawn an enemy ship `global.difficulty`% of the frames (on average)
3. Your code should deal with the `global.gameover == true` condition (hint, an `else` statment may be useful to stop spawning ships when the game is over)
4. Your code should restart the game after the enter key is pressed


## Useful Funtions


* `instance_deactivate_all(notme);`

Destroys all instances (objects) in the room. Set `notme = true` to leave the calling object

* `instance_creat_depth(x,y,depth,obj);`

Creats the `obj` object at position `(x,y)`. A smaller depth means that it will be rendered over an object with bigger depth. 
(i.e.) object with depth -20 will be drawn over objct with depth 0. Set `depth = 0` by default.

* `keyboard_check(key);`

Returns `true` if the *key* is pressed down. Key is inputed as `vk_*nameOfKey*` example: space is `vk_space`

* `random_range(min,max); *and* `random(max);`

Returns a random integer `n` such that `min<=n<=max` or `0<=n<=max` respectivly

* `room_restart();`

Returns the room to its starting conditions

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




