<iframe width="600" height="338" src="http://www.youtube.com/embed/MXQozTxQSiE" frameborder="0" allowfullscreen></iframe>

The woman in the red dress is a character in a training program built by the rebels in the Matrix. More specifically, [_Mouse_](http://en.wikipedia.org/wiki/List_of_minor_characters_in_the_Matrix_series#Mouse) designed her... and he picked the color red for her dress. Although many find it hard to work creatively with color, very few people would question why he chose this. It's attractive, erotic, wild and draws attention.

There are 2 reasons why I choose to show this scene:

1. The use of color in this movie is fantastic. A vague green color is used for all scenes in the Matrix. The slaves in the Matric are dressed in gray. Scenes in the Nebuchadnezzar are tinted blue to symbolize clouds, heaven and light - the real world. Everything has a symbolic meaning, and color is used to emphasize it.

2. Once you learn to control color, you'll be like Neo moving through the Matrix. You'll see things that no one else sees.

I've had an obsession with color for many years. I find it to be one the hardest things to master in the graphic arts, as it's both very subjective and highly dynamic (our perception of a single color change depending on what other colors we pair it with).

	examples of Itten with a color changing
	
So how do you go about finding color matches that express meaning?

> "He who first draws lines and then add color wil never succeed in producing a clear, intense color effect [...] Color have dimensions and directionality of their own" - Johannes Itten

	Example from p. 17, Johannes Itten

How to use Color
----------------
	
IT's ABOUT FINDING MEANING WITH COLOR
The less color possible
THINK
	
	
What is Color?
--------------

Direct white light through a prism > you get a range of colors

	Image of colors in prism (maybe pink floyd - fun)
	
Why does the sun turn red when setting? The athmosphere is a filter
	
Color in Computation is almost like color in real life. 	


Subtractive vs. Additive Color Systems 
--------------------------------------

Due to the shere number of different color systems, it can seem difficult just to get started playing around with color. Most modern computer users know color systems like RGB and CMYK, but many books on the subject speak of the primary colors as red, green and yellow. This is due to a single physiological fact:

* All colors created with light will combine in an additive way, meaning that if you mix all colors together, the resulting color will be white
* All colors created with paint or ink will combine in a subtractive way, meaning that if you mix all colors together, the resulting color will be black (pigments work by absorbing light and reflecting the rest).

Without thinking too much about it, the conclusion is that most painters treat red, green and yellow (or cyan, magenta and yellow) as the primary colors, whereas programmers treat red, green and blue as the primary colors. Because the color spectrum is a sliding scale, this is all rather arbitrary.

[explain CMYK]

Because we are working in both worlds, we are faced with a problem: we are designing on a screen that uses additive blending, but printing on a printer that uses subtractive blending. Luckily, Processing does not have a native way of working with CMYK, and the AMS printers are optimized for the Adobe RGB 1998 color profile ... everything is additive from now on.

Because of this, Goethe and Itten's color circled use RGY. They are based on the limitations in ranges of color at the time, and are therefore rough estimates:

> "Although these artistic complements may not be precise under the scientific definition, most artistic color wheels are laid out roughly like HSV" - Wikipedia


Computational Color Systems
---------------------------

RGB 

CMYK

HSB

Why we work with HSB and not RGB


Complimentary Colors
--------------------

A complimentary color is a color, that mixed into the current color will produce white.

Red = Cyan (G+B)
Green = Magenta (R+B)
Blue = Yellow (R+G)

	Example in Processing of finding a complimentary color in HSB
	
Pull one color out of the color spectrum, mix the others together, mix them into the chosen color, and they will produce white again. (take green, all other color mix to red, green and red produce white)

The eye tends to look for balance. Look at a green square for a while, and then close your eyes. You will now see a cyan square. This has made some people say that paintings should gravitate towards color balance - not true, proved by Itten. But it's true that everything that does not mix to to white seems discordant in nature => We already have produced meaning with color.

	Show an example of color balance
	Show an example with extreme use of one side of the spectrum
	
	
Color Wheel
-----------

The color wheel is a simple scale created by mixing primary colors into second colors into tertiary colors, and then filling out the blanks

	Show Processing sketch that draws Ittens color circle with HSB (but RGB)
	
But we're really not talking about a color wheel, but a 3D color space, where hue, saturation and brightness has an axis each

	Show image of color spectrum
	
Most things that learns you how to create a color scheme will say things like "pick on the opposite side of the color wheel". This 

	as seen on p. 31. Use text p. 29.
	Use this link: http://serennu.com/colour/rgbtohsl.php
	It's easy because HSB hue is 360 degrees, so complimentary is just other side
	(talk about how purple is the mising piece, and that's why no one uses purple)
	This is why we use HSB. It's soo easy to do computations on color (finding complimentary color no matter what h, s or b)
	
	SHOW COOL / WARM SPECTRUM (http://www.tigercolor.com/color-lab/color-theory/color-theory-intro.htm)
	
Single Color Schemes
--------------------


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

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" />
	
Here's an example of extremely bad use of a monochromatic color scheme. The only role of the color in this graph is to connect names with lines. How can we do that when the colors are almost identical?


Generating Analogous Color Schemes
----------------------------------

And analogous color scheme is a suit of colors that are located close to each other on the color wheel. Here's an example of a pure analogous color scheme with blue as the base color. I call it pure, as we rotate 30 degrees around the color wheel on each side to find the 2 neighboring colors. It's 30 degrees because the standard color wheel has 12 colors, and 360/12 is 30.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_analogous)

Of course nothing prevents you from playing with the settings. Here's an example of the same blue base color, but with neighboring colors found by rotating 50 degrees around the color wheel, and subtracting 50 from the base saturation. The further you rotate around the wheel, the less analogous harmony you get.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_analogous2)

Here's an example of analogous color use from Wolfgang Weingart's book about typography.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous.jpg" />

MORE EXAMPLE OF ANALOGOUS




Generating Complimentary Color Schemes
--------------------------------------

Generating Triadic Color Schemes
--------------------------------

Generating Tetrads Color Schemes
--------------------------------



Generating Gradients
--------------------


Make something that breaks out of those boring schemes - make gradients like @kottke's twitter profile









	
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

