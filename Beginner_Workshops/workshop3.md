# Introduction to Programming with JavaScript

## Introduction to Variables
### What is a variable?

### Using Variables
* **Declaring a variable:** `var numApples`
* **Assigning to a variable:** `numApples = 2;`

## Functions with Parameters
* With Karel, we had functions typically of the form:
```javascript
function some_name() {
  // Some code goes here.
}
```
We typically never put anything inside the brackets. Now, we can add **paramaters** inside the brackets.

Parameters allow our function to take input.

*Example 5.2.4 in CodeHS: Area of Triangle*
```javascript
function area_of_triangle(base,height) {
  var area = base*height/2;
  println(area);
}
```
