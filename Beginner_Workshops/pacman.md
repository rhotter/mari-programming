# Design a Pac-Man Ghost!

## Instructions
Write a program to draw ghosts on the screen. You must do this by writing a function called drawGhost, which takes three parameters, the center x location of the ghost, the center y location of the ghost and the color of the ghost.

**Note:** The center of the ghost does not have to be exactly at the center. Rather, it can be any point on the ghost.

```javascript
function drawGhost(centerX, centerY, color){

}
```

**Tips:**
1. Divide your problem into basic shapes to draw
2. Evaluate the relationship between the position of each shape.
3. A `drawCircle()` function would be very useful to avoid having to draw circles all the time!

## How to Draw Basic Shapes
### Drawing a Circle
```javascript
// Create an object variable called circ (could be any name), with the Circle template.
var circ = new Circle(radius); 

// Set the center position of the circ object.
circ.setPosition(x,y); 

// Set the color of the circ object.
circ.setColor(Color.someColor);

// Add the circ object to the screen (in other words, display the circle)
add(circ);

```

### Drawing a Rectangle
```javascript
// Create an object variable called rect (could be any name), with the Rectangle template.
var rect = new Rectangle(width,height); 

// Set the top-left position of the rect object.
rect.setPosition(x,y);

// Set the color of the rect object.
rect.setColor(Color.someColor);

// Add the rect object to the screen (in other words, display the rectangle)
rect(circ);

```
