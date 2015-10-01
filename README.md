# Use the Force, Touch
A little 3D Touch demo app

Fire it up and push on the screen!  Displays the force and radius of your touch.  Also tracks the number of distinct levels that have been detected.

This project was inspired by this tweet from @stroughtonsmith:
https://twitter.com/stroughtonsmith/status/647698760924045312

It left me wondering -- could UITouch.majorRadius really be used to simulate 3D Touch on older devices?  An experiment was in order.

Spoiler alert: It's not going to happen.  On my iPhone 6S it looks like there are about 400 levels of 3D Touch sensitivity, but only 2 or 3 useful levels of majorRadius.  My average touch doesn't change the radius *at all* as I vary the pressure I apply to the screen.  The radius only changes if I change the angle of my finger.

So the conclusion?  Sorry folks, you gotta buy the new phone.  :-)
