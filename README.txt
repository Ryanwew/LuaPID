A basic script for using PID control systems for animation, movement, player interaction and many other applications.

Instructions:
Insert the PID1 function into your game, within its own script.

Call the function in a loop

Apply the output of the function to a change that affects the position


Function Details:
_G.PID(Position, Target, LastPos, Kp, Ki, Kd)

Position: Current position of the state

Target: Where you want the state

LastPos: Last measurement of "Position", used for calculating derivative

Kp: Proportional coefficient

Ki: Integral coefficient

Kd: Derivative coefficient



