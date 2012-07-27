<iframe width="600" height="338" src="http://www.youtube.com/embed/MXQozTxQSiE" frameborder="0" allowfullscreen></iframe>

The woman in the red dress is a character in a training program built by the rebels in the Matrix. More specifically, [_Mouse_](http://en.wikipedia.org/wiki/List_of_minor_characters_in_the_Matrix_series#Mouse) designed her... and he picked the color red for her dress. Although many find it hard to work creatively with color, very few people would question why he chose this. It's attractive, erotic, wild and draws attention.

There are 2 reasons why I choose to show this scene:

1. The use of color in this movie is fantastic. A vague green color is used for all scenes in the Matrix. The slaves in the Matric are dressed in gray. Scenes in the Nebuchadnezzar are tinted blue to symbolize clouds, heaven and light - the real world. Everything has a symbolic meaning, and color is used to emphasize it.

2. Once you learn to control color, you'll be like Neo moving through the Matrix. You'll see things that no one else sees.

I've had an obsession with color for many years. It's one the hardest things to master in the graphic arts, as it's both very subjective and highly dynamic (our perception of a single color change depending on what other colors we pair it with).

	examples of Itten with a color changing

What We Want to Learn About Color
---------------------------------

> "He who first draws lines and then add color will never succeed in producing a clear, intense color effect [...] Color have dimensions and directionality of their own" - Johannes Itten

	Example from p. 17, Johannes Itten
	
Finding ways to compute color using color models. Color in itself is a mathematical model, and we can manipulate it in code.

In this class you will learn about computational color.

	
What is Color?
--------------

Direct white light through a prism > you get a range of colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/pinkfloyd_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/pinkfloyd.jpg" />
	
This is why the sun turns red when setting. The athmosphere is a filter.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/sunset_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/sunset.jpg" />

Color is all around us. Color express meaning. It's a natural way of communication. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/red_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/red.jpg" />


Subtractive vs. Additive Color Systems 
--------------------------------------

Let's say that you walk down to Blick and buy a beginner's painting set and mix all of the colors together in a bucket. What color will you get? - Black.

Let's say you then open a new processing sketch and mixes all colors together. What color do you get? - White.

Obviously there are 2 different ways that colors mix: by addition and by subtraction.

So you probably know about this color wheel from your high school art classes

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten.jpg" />
	
And then you've seen this wheel:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb.jpg" />
	
See the difference? The first is a color wheel built on a subtractive RYB model, and the other is built on an additive RGB model.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten.jpg" />
	
All colors created with paint or ink will combine in a **subtractive** way, meaning that if you mix all colors together, the resulting color will be black (pigments work by absorbing light and reflecting the rest). If you use RGB as the primary colors in this model, you cannot mix yellow. This is why RYB was chosen as primary colors, and this had a tremendous impact on color use in art.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb.jpg" />

All colors created with light will combine in an **additive** way, meaning that if you mix all colors together, the resulting color will be white. RGB is just one model that simulates this.

The truth is that color is a sliding spectrum, and color wheels are just basic ways of dividing this spectrum. Actually, you can use any three colors to define what's called a color gamut, a subset of all possible colors (http://en.wikipedia.org/wiki/Gamut)

Terms like primary, complementary, triadic colors vary by model. The opposite of "red" in the RYB colour wheel is "green", whereas the opposite of "red" in the RGB colour wheel is cyan.

Because we are working in both worlds, we are faced with a problem: we are designing on a screen that uses additive blending, but printing on a printer that uses subtractive blending. Processing does not have a native way of working with CMYK, and the AMS printers are optimized for the Adobe RGB 1998 color profile ... everything is additive from now on.

In most places, like analogous color schemes, this does not matter. In other places, like complementary, it matters a lot. We'll talk about why.


Computational Color Systems
---------------------------

> "This question is either trivially easy, or nightmarishly complex, depending on what you're trying to achieve." - from Processing.org forum on how to find complementary color.

RGB  (255, 255, 255)

CMYK - for printing. Black in RGB is expensive.

HSB (360, 100, 100)

Why we work with HSB and not RGB

	
HSB Color Wheel
---------------

We're really not talking about a color wheel, but a 3D color space, where hue, saturation and brightness has an axis each

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb.jpg" />

H (0-360) control the angle on the wheel. S (0-100) controls saturation (radius). B (0-100) controls brightness (up-down the wheel). The first steps into working with HSB would be to draw a color circle using H.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/hsb_color_circle)

By tweaking the saturation and brightness we can make the colors less sharp.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing2.jpg" />

	

Generating Monochromatic Color Schemes
--------------------------------------

The different ways of creating color schemes are basically just constraints to help you not float around randomly in the 3D color space. One of the simplest possible ways of generating a color scheme is to pick a specific hue and saturation, and then choose colors that are evenly distributed on the brightness scale. This is one example of a **monochromatic color scheme**.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_brightness.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_brightness)
	
This sketch has an even distribution in brightness values. You can easily imagine code that choose randomly, or allows you to manipulate each color to place it on a custom spot on the brightness scale. A slightly more sophisticated **monochromatic color scheme** would be to manipulate both saturation and brightness:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_saturation_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_saturation_brightness.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_saturation_brightness)

This sketch randomly chose a saturation and brightness value between 0 and 100. To achieve balance it might make sense to keep the random saturation and brightness the same between the base color and the two other colors.

Monochromatic can be used for: simplicity, minimalism. Is at the same time really bad and good at creating contrast: depends on your color choices.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klm_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klm.jpg" />

This is an example of F.H.K. Herion's design for KLM Royal Dutch Airlines with a monochrome color profile.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/signs_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/signs.jpg" />

Traffic signs, here British traffic signs from the 1960's, generally have a monochromatic color profile, in order not to confuse the driver. Color is selectively used for drawing attention to important instructions.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/vitaminwater_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/vitaminwater.jpg" />

We are hip. We are trendy. We use monochromatic color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" />
	
Here's an example of extremely bad use of a monochromatic color scheme. The only role of the color in this graph is to connect names with lines. How can we do that when the colors are almost identical?

Going Around the Wheel in Code
------------------------------

Now that we need to start finding neighbors and opposite colors on the spectrum, we need to be able to move around the hue wheel. One example of this would be to find the color that is opposite to another color (hue 0 and hue 180). The easiest way to find the opposite of a degree would be to add 180 to it. 

	int degree = 190;
	int antipode = degree + 180; // yields 370, WRONG!

However, HSB color modes do not wrap around, which means that anything below 0 and above 360 in hue will produce red. So we need to be able to find a degree between 0-360 no matter what the base hue is. For this we can use modulo to find the remainder, and by adding 180 to the degree, we get the correct antipode between 0-360. This formula can be used for any degree, like finding the color next to another color:

	int degree = 190;
	int antipode = (degree + 180) % 360; // yields 10, CORRECT!

Generating Analogous Color Schemes
----------------------------------

And analogous color scheme is a suit of colors that are located close to each other on the color wheel. Often this is a color located 30 degrees away from the base color hue on either side, but that degree can vary. We rotate 30 degrees around the color wheel because the standard color wheel has 12 colors, and 360/12 is 30. We are just finding the "next" color on the wheel.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_analogous)

Of course nothing prevents you from playing with the settings. Here's an example of the same blue base color, but with neighboring colors found by rotating 50 degrees around the color wheel, and subtracting 50 from the base saturation. The further you rotate around the wheel, the less analogous harmony you get. We can loosely say that anything below a 90 degree angle is an analogous color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_analogous2)

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_trees_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_trees.jpg" />

Analogous color schemes are found in nature and are often very harmonious to the eye.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_letterpress_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_letterpress.jpg" />

With the return of the letterpress greeting card in the 2000's, I've noticed an extreme use of analogous color schemes.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous.jpg" />

Here's an example of analogous color use from Wolfgang Weingart's book about typography.


Generating Complementary Color Schemes
--------------------------------------

A complementary color is a color that exist on the opposite side of the color wheel. Older color theorists considered this to be the definition of color harmony, as complementary colors will always mix to grayish black (in paint) or grayish white (in light).

Red = Cyan (G+B)
Green = Magenta (R+B)
Blue = Yellow (R+G)
	
Pull one color out of the color spectrum, mix the others together, mix them into the chosen color, and they will produce white again. (take green, all other color mix to red, green and red produce white)

The eye tends to look for balance. Look at a green square for a while, and then close your eyes. You will now see a cyan square. This has made some people say that paintings should gravitate towards color balance - not true, proved by Itten. But it's true that everything that does not mix to to white seems discordant in nature => We already have produced meaning with color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_complementary)

Two examples of complementary color schemes. Notice the sharp contrast between the two colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_complementary2)

Another complementary color scheme.

TODO: EXAMPLES (blue/yellow)


Generating Triadic Color Schemes
--------------------------------

A triadic color can be said to be the opposite of an analogous color. Where analogous colors are colors located within 90 degrees of the primary color hue, triadic colors are colors located more than 90 degrees away of the base color hue. Here's a "pure" triadic color scheme with colors found by rotating 120 degrees on each side (internally an Equilateral triangle with 60 degree internal angles).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tridiadic.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_triadic)

You may notice how this is the primary colors, which makes sense given the calculation.

An interesting thing is to compare a triadic color scheme in RGB with the corresponding scheme in a subtractive color mode like RYB.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic_sub_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tridiadic_sub.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_triadic)

This is the primary color set that painters and designers throughout the history of arts have used, and to me it's seems more harmonious than the additive version. This proves that any color scheme is just a way of moving around the color circle in a specific color mode, and should be used accordingly. You may notice how the blue/yellow has a triadic relationship in RGB, but are complementary colors in RYB.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tridiadic2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_triadic2)

Here's another example of a triadic color scheme with hue 90 as the base hue.

TODO: Examples


Generating Tetradic Color Schemes
--------------------------------

A tretadic color scheme is a set of 4 colors chosen by placing a rectangle on the color wheel and selecting the colors that fall on the corner of the rectangle. This color scheme is basically the same as a double complementary color scheme. Here's an example of color chosen by rotating 90 degrees around the color wheel 3 times.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_tetrad)

Notice how this color scheme has a slight rich cold/warm contrast in the complementary color sets. However, the rectangle does not need to be equal-sided. Here's an example of a color scheme with the same base complementary pair, but with a smaller rectangle width used to pick the other complementary pair. This increases the cold/warm contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_tetrad2)

TODO: Examples


Generating Gradients
--------------------





Something where I show what a person can do with color. What's the meaning?





	
there are great tools for this: http://kuler.adobe.com or http://colorschemedesigner.com. They are all very focused on manipulating hue, and when you start playing around with the colors, it's all by freehand. If you write your own code you can set your own constraints. The assignment this week is to create your own code that computes a color scheme.









THINGS TO PUT IN SOMEWHERE
//////////////////////////



Johannes Itten's Art of Color
-----------------------------

Studied color theory his whole life

> "The doctrine to be developed here is an aesthetic color theory originating in the experience and intuition of a painter [...] Color effects are in the eye of the beholder." - Johannes Ittens


### Itten's color harmoy

Anything that has equal distance in hue or saturation/brightness
Show sketch that displays different ways of picking a random color scheme

### Itten's contrasts

Itten thinks color design relies on 7 different types of contrast (explain all of them with examples from graphic design world + code examples)
	

Josef Albers' Interaction of Color
----------------------------------

All the crazy examples where the same colors do not look a like.



Combining color is a 2-step process: 1) Plan (objective) 2) Implement and tweak (subjective). Tell story about Matisse who first wrote his colors on the sketch papers, and then tweaked them when painting.

Use this:
http://itp.nyu.edu/classes/ahsl-fall2010/category/readings/final-projects/combiing-color/

Use GG library: sort color

Show how to calculate a gradient: I HAVE MADE THE EXAMPLE ALREADY

