iterant
=======

This is a Mathematica simulation of Langton's ant. It is the first step toward a solution to problem [349](http://projecteuler.net/problem=349) from Project Euler:

> An ant moves on a regular grid of squares that are coloured either black or white.
> The ant is always oriented in one of the cardinal directions (left, right, up or down) and moves
> from square to adjacent square according to the following rules:
> 
> - if it is on a black square, it flips the color of the square to white, rotates 90 degrees
> counterclockwise and moves forward one square.
> - if it is on a white square, it flips the color of the square to black, rotates 90 degrees
> clockwise and moves forward one square.
> 
> Starting with a grid that is entirely white, how many squares are black after 10^18 moves of
> the ant?

We can find by inspection the point around which the motion of the ant ceases to be random.

![screenshot](https://raw.github.com/sbool/iterant/master/screenshot.png)

