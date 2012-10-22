Randomization
=============

Randomization in Graphic Design
-------------------------------

What does it mean to introduce randomness in graphic design products? Let's examine some cases and see how they take advantage of randomness in code.

	Example: Kunsthaus Graz

	Example: Le Cinemateque Francaise

	Example: Walker Art Center (Using randomness for permutation: choosing randomly from set of patterns / typefaces)

	Example: My own liber Amicorum book cover + generative logo design



Random
------

We've used simple randomness all through the semester. Here's a short example on how to use the random function in Processing.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/random_simple)

Instead of random() around in your code, here's an example on how to create a class that can help you with this.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/random_class)

	Example with decide class and shape sizes / positions. Instead of making them any size from 100-500 pixels, they can only be 100, 200, 300, 400, 500 pixels in size => A way of constraining your randomness.

Grid examples with randomization and decide class


Perlin Noise
------------

Here's an example of how noise() is different than random(). As you can see, the values are much more organic, though still random.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/random_vs_noise)

When a Processing sketch loads, it will choose a random noiseSeed for the perlin noise. This means that your lines will look different every time the program runs. After launching, the noiseSeed is stable, so all lines using the same noise will look the same (if given the same counter). You can use noiseSeed to change this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/noise_seed)

You can manipulate the octaves and falloff via the noiseDetail function.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/noise_detail)

Perlin Noise can be used to do many things. One of things that it's great for is introducing a more organic feel into your sketches. Here's a sketch with a circle drawn with Perlin Noise.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/noise_organic)

Another thing Perlin Noise can be used for, is to create gradient surfaces with an organic look. Here's a Processing sketch that uses Perlin noise in 2 dimensions:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/randomization/noise_surface)


Toxiclibs
---------

TOXICLIBS!!!