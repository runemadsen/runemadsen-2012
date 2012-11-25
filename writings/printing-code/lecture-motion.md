Motion in Graphic Design
========================

In this class we'll investigate what happens when we use motion or animation techniques to create flat, 2D designs.

I've been exploring this in my own work. Here's a simple, generative logo made with the physics library Box2D.

<iframe src="http://player.vimeo.com/video/9513121?title=0&amp;byline=0&amp;portrait=0" width="600" height="338" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen data-slideshow="self"></iframe>

Here's an image of a series of graphic prints created with randomized, moving arcs.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/tiny_artist1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/tiny_artist1.jpg" />

Examples
--------

	There's a ton of examples in the "movement" chapter in dynamic identities. USE! p. 57

	Find examples from graphic design that shows movement.

PGraphics and draw
------------------

Now that we're moving into the world of motion and animation, take a look at the framework_loop example on how you can use PGraphics with the draw loop, and save multiple images from the animation.

[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/framework/draw_loop)


Random Frame Saving
-------------------

First, let's look at how we can use millis() to randomize a frame grab.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_example.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/millis_example)

Here's an example where we use the same millis() code in a class, with the seed code from the logo class. These are the outputs from running the sketch 5 times.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement1.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement2.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement3.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement4.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/millis_movement5.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/millis_movement)


Easings
-------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easingsheet_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easingsheet.jpg" />

Here's a simple example of how to create fluent motion with the [Ani easing library](http://www.looksgood.de/libraries/Ani/).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_simple)

Here's an example creating a repeating bouncing ball with the BOUNCE easing, and the onEnd callback.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounce_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounce.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_bounce)

Here's the same example, but using a class and multiple objects created from the class.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounces_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounces.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_bounces)

You can also chain multiple tweens together, in order to create an animation sequence. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounce_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_bounce.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_sequence)

Here's a very simple sketch that demonstrates how you could actually use these easings to create a generative, graphic poster.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster1.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster2.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster3.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster4.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster5.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster6.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster7_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_poster7.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_poster)

If you're interested in exploring the different types of easings, this sketch will visualize all of them for you.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_viewer_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/easings_viewer.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/easings_viewer)

You can check out all the methods on the easings library by visiting the [Javadocs](http://www.looksgood.de/libraries/Ani/reference/index.html)


Physics Libraries
-----------------

One interesting topic is the idea of simulating physics in graphic designs.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_random1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_random1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_random2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_random2.jpg" />

Daniel Shiffman has made a nice wrapper to the Box2D library (hello Angry Birds!) that makes it easier to use in Processing.

	Very simple example with a thing falling

	Very simple example with bounds

Now that we know how to create a world and make things fall, we can use this in our designs. Here's a sketch that uses the same technique to make a generate circle shape.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced1.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced2.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced3.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced5.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced6.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced7_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced7.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced8_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/motion/physics_advanced8.png" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/motion/physics_advanced)


Mouse Interaction
-----------------

	ControlP5 to control your sketch after freezing it


More stuff
----------

Use “Simulate” chapter in Form and Code: Swarms, Genetic Algorithms, particles, so on.