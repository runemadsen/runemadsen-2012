Randomization
=============

random

How to use random to do something with e.g. 30%, 50% or 80% chance 

	example with dropping balls


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

	examples organiz forms

	examples textures: http://processing.org/reference/noiseDetail_.html




	Generative Form
Noise
Use p. 335 in GG - I showed an example without noise in the first class.

Use examples from form lecture, but this time go through them and explain the noise

TOXICLIBS!!!