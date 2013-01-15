Vectors and Randomization
=========================

For the last 7 weeks of the semester, these lectures will be a little more heavy on code structure and the actual coding. This class is be about randomization and manipulation of vectors, but just as much about how to structure your code.


ArrayLists
----------

Before we start with the examples, we need to talk about ArrayLists. In your code you often you arrays, which can hold a list of multiple objects. The problem with arrays is that their length is static, which means that you need to know the length of the array beforehand.

Let's imagine that I want to draw 50 Hexagon objects on the screen. Arrays are great for this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arrays_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arrays.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/arrays)

But what if you want to add more hexagons to the array at a later time? For example, what if you want the add a hexagon on the screen where the user presses the mouse? Then you need a kind of flexible array that can get bigger and smaller on the fly. That's what an ArrayList is! 

Take a look at this example that implements the exact same code using ArrayLists, and also implements the mouse clicks

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arraylists_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arraylists.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/arraylists)

Vectors
--------

The basic concept of a vector is that it's a simple class that has a "x" and "y" property. Processing has a built-in class called PVector that you can use out of the box. Dan Shiffman has a ton of material on this, so I won't go that much into detail (you can [read about it on his website](http://natureofcode.com/book/chapter-1-vectors/)). 

What's important to us in this class is how we can use vectors to represent individual points on the screen. These can be used to create outlines or closed shapes. Here's an example that demonstrates how to draw a line with normal variables AND with PVector.
 
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/vectors)

What you start to realize is that a vector is actually a description of a direction. For example, a single vector can describe a length of a line. Here's an example of what I mean by that. Also notice how the PVector class has a bunch of cool features, including subtracting and adding vectors to each other. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_subtraction_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_subtraction.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/vectors_subtraction)

The toxiclibs library ships with its own vector class called Vec2D, which basically behaves in the exact same way as PVector, but with a lot of added functionality.


Toxiclibs and Vectors
---------------------

Often when you generate random forms, you need the ability to manipulate the outline of the form. For example, here I generate a line with beginShape using 5 random points

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_1.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

Now, let's say I want to divide that line up into more segments. Toxiclibs ships with a nice Spline class that can do this for you. Here is the exact same code, but using the spline class to get double the points from the same 5 random points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

Here we divide each point into 10 smaller points, with a distance based on the curve of the original 5 points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

You can use the getDecimatedVertices() function to get points with equal distance to each other.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_4.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

And with a little bit of fun randomness, we can create a wobbly line from those points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_5.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

There's a ton of interesting features in toxiclibs, and if you're interested, check the "examples" folder.


Weighted Randomness
-------------------

Now that we understand vectors, let's look at randomization, and later how it related to the concept of vectors.

We've used simple randomness all through the semester. Here's a short example on how to use the random function in Processing.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_simple)

Instead of random() around in your code, here's an example on how to create a class that can help you with this.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_class)

This Randomizer class can also be used with your own custom classes. For example, you might create a *Settings* class, and let the Randomizer select a specific setting at random. Here's an example on how to do that.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_settings_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_settings.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_settings)

See how clean that code is compared to a bunch of if statements with random function calls in them? We could even go as far as wrapping it all in a circle class. This is exactly the same code as before, but much nicer to look at.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_circles)


Toxiclibs: Weighted Randomness
------------------------------

Toxiclibs has a number of nice classes that you can use for randomization purposes. First of all, it has a weighted random class that you can use to randomly choose from a number of weights (like the one we did before).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_weighted_random_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_weighted_random.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_weighted_random)

You can put all types of objects in the weightedrandom class, so we can recreate our circles example using the toxiclibs library.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_circles.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_circles)


Perlin Noise
------------

Here's an example of how noise() is different than random(). As you can see, the values are much more organic, though still random.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_vs_noise)

When a Processing sketch loads, it will choose a random noiseSeed for the perlin noise. This means that your lines will look different every time the program runs. After launching, the noiseSeed is stable, so all lines using the same noise will look the same (if given the same counter). You can use noiseSeed to change this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_seed)

You can manipulate the octaves and falloff via the noiseDetail function.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_detail)

Perlin Noise can be used to do many things. One of things that it's great for is introducing a more organic feel into your sketches. Here's a sketch with a circle drawn with Perlin Noise.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_organic)

It's quite easy to draw a circle with Perlin noise, but forming many straight lines into a form can be hard. Here's an example of how you can create your own line function that draw a line with Perlin Noise:



Another thing Perlin Noise can be used for, is to create gradient surfaces with an organic look. Here's a Processing sketch that uses Perlin noise in 2 dimensions:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_surface)
