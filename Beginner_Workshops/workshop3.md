# Introduction to Programming with JavaScript

## Introduction to Variables
### What is a variable?

### Using Variables
* When we want to create room in our computer's memory for the variable, we can **declare it**. We do this by using the `var` keyword followed by the name of the variable.
```
var myVariable;
```
* **Assigning to a variable:** `myVariable = 2;`

## Functions with Parameters
Until now, we haven't put anything inside the brackets when we call on a function. Now, we can add **paramaters** inside the brackets. Parameters allow our function to take input.

*Example 5.2.4 in CodeHS: Area of Triangle*
```javascript
function area_of_triangle(base,height) {
  var area = base*height/2;
  println(area);
}
```

## Graphics and Object-Oriented Programming
In the real world, we're surrounded by objects everywhere. Let's take for example a car. A car has methods that are specific only to the car. For example, it can `accelerate()` and `break()`. Now there are many different types of cars, but they might all share the same methods. We call this an object template. So each car will be a different object, but have the same object template.

In Javascript, objects are very useful for graphics.

### Circles
Let's see how we'd draw a circle in JavaScript.

First we'd create a new variable called `circle`. We will then assign an object template to it, specifically, the `Circle()` template. We will pass the argument `30` into `Circle()`, where `30` represents the radius of the circle.
```javascript
var circle = new Circle(30);
```

Now, we have different methods that we can use for our circle:
``` javascript
circle.setPosition(500,100);
circle.setColor(Color.blue);
```

Just creating an object though isn't enough. We have to add it to the screen:
``` javascript
add(circle);
```
