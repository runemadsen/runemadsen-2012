Computational Color
===================

<iframe width="600" height="338" src="http://www.youtube.com/embed/MXQozTxQSiE" frameborder="0" allowfullscreen></iframe>

If you expect to come out of this class knowing simple rules like "red is for love" or "green is for happiness", you'll be extremely disappointed today. Color is way too subjective and dynamic to allow for so simple definitions. Actually, I'd rather stay away from telling you which colors to use when. Today, we will do 2 things instead:

* Learn to, simply, observe color and its characteristics.
* Learn the physics of color and how to approach it in code.

For most of you, using color is probably a question of "what values do I put in fill()". We'll try to add a little more techniques today.

The woman in the red dress is a character in a training program built by the rebels in the Matrix. More specifically, [_Mouse_](http://en.wikipedia.org/wiki/List_of_minor_characters_in_the_Matrix_series#Mouse) designed her... and he picked the color red for her dress. Although many find it hard to work creatively with color, very few people would question why he chose this. It's attractive, erotic, wild and draws attention.

There are 2 reasons why I choose to show this scene:

1. The use of color in this movie is fantastic. A vague green color is used for all scenes in the Matrix. The slaves in the Matrix are dressed in gray. Scenes in the Nebuchadnezzar are tinted blue to symbolize clouds, heaven and light - the real world. Everything has a symbolic meaning, and color is used to emphasize it.

2. Once you learn to control color, you'll be like Neo moving through the Matrix. You'll see things that no one else sees.

Combining color is a 2-step process: 1) Plan (objective) 2) Implement and tweak (subjective). Matisse first wrote his colors on the sketch papers, and then tweaked them when painting.

Color is one the hardest things to master in the graphic arts, as it's both very subjective and highly dynamic (our perception of a single color change depending on what other colors we pair it with).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/itten_exchange)

Here's a quick example of how dynamic behavior color combination can have. This looks like 2 grounds where the grounds exchanged in the center squares. They are - in fact - 3 colors, where the center square is a color midways in the hue spectrum between the grounds. The eye is searching for relevance. We can prove it by removing the grounds:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange2.jpg" />
	
The conclusion to this must be that color theory matters: Based on simple calculation we created an effect in the eye of the beholder. The problem with combining color only by numbers is that you can start to trust the numbers instead of your eyes. Here's another example of why this is problematic:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/itten_example2)

In this example the small squares looks like the exact same color, but they are not even close. Because they keep a relative distance in brightness to their respective grounds, they look the same to the eye. We will investigate this further later when talking about simultaneous contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_removed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_removed.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/itten_example2)


Why Color Matter: Gerstners Programmatic Color Exercise
-------------------------------------------------------

[everything from my note in Designing Programmes. Don't program, just show the pictures.]

	
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

Terms like primary, complementary, triadic colors vary by model. The opposite of "red" in the RYB color wheel is "green", whereas the opposite of "red" in the RGB color wheel is cyan.

Because we are working in both worlds, we are faced with a problem: we are designing on a screen that uses additive blending, but printing on a printer that uses subtractive blending. Processing does not have a native way of working with CMYK, and the AMS printers are optimized for the Adobe RGB 1998 color profile ... everything is additive from now on.

In most places, like analogous color schemes, this does not matter. In other places, like complementary, it matters a lot. We'll talk about why.


Computational Color Systems
---------------------------

> "This question is either trivially easy, or nightmarishly complex, depending on what you're trying to achieve." - from Processing.org forum on how to find complementary color.

RGB  (255, 255, 255)

CMYK - for printing. Black in RGB is expensive.

HSB (360, 100, 100)

Why we work with HSB and not RGB
- How would you otherwise know brightness and saturation of a color? How would you create contrasts and schemes?

The color object in Processing is not very good. That's why we create our own small class to handle HSB and RGB colors.

	
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

Johannes Itten spoke of 7 different color contrasts that any graphic artist needs to master. Two of these are especially tied to monochrome color: The contrast of light and dark and the contrast of saturation.

Contrast of Light and Dark
--------------------------

> Day and night, light and darkness - this polarity is of fundamental significance in human life and nature generally - Johannes Itten

> If one is not able to distinguish the difference between a higher tone and a lower tone, one probably should not make music - Josef Albers

The contrast of light and dark is very simple to understand: whenever we have two colors with a difference in brightness, a clear contrast between the two colors will exist. The HSB color mode makes it very obvious what kind of brightness we are working with.

However, there's a big problem with computational light/dark scales: they are not linear. One might think that you can make a scale of equally contrasted rectangles by moving from brightness 10 to brightness 90 in steps of 10.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_wrong_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_wrong.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_lightdark_wrong)

You might notice how there's a sharp contrast between first dark rectangles, but almost no contrast between any rectangle with 60 or more in brightness. First discovered in the so-called Weber-Fechner Law, a linear increase in brightness will distribute the contrast visually exponentially from white to black. An exponential increase in brightness will distribute the contrast linearly across all segments.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_brightness.jpg" />

We can of course grow our brightness exponentially in the code instead:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_right_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_right.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_lightdark_right)

Here's an example of using an exponential increment in brightness. Notice how the contrast is much more even. Unfortunately this formula won't work in low- or high-brightness colors, but it's a good general rule.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/dada_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/dada.jpg" />

Front cover designed by Paul Rand. Notice the light-dark contrast and use of monochromatic color scheme.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/rand_sartre_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/rand_sartre.jpg" />

Another example of light-dark contrast by Paul Rand.

Contrast of Saturation
----------------------

One way you can experiment with a monochromatic color scheme is by investigating the contrast of saturation. This is the one of Itten's contrasts that is only clearly visible in monochromatic color schemes, as it's drowned out by other contrasts. It describes the contrast that a brilliant color has towards a dull color of the same hue.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_saturation_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_saturation.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_saturation)

This is an example of 2 colors with contrast in saturation.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klee_fish_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klee_fish.jpg" />

Here's an example of saturation contrast in the painting "Fish Magic" by Paul Klee. Although there is also a light/dark contrast, it's specifically the brilliance of the fish contrasted to the dull background that makes it come alive.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brockmann_saturation_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brockmann_saturation.jpg" />

Josef Muller-Brockmann uses saturated color boxes in contrast with the gray background.


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

Complementary contrast is one of Itten's seven contrasts, however his examples are based on the RYB subtractive color model. Most of Ittens complementary colors are triadic color pairs in the RGB model.

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

Contrast of Hue
---------------

One of Itten's seven color contrasts is the contrast of hue, where the base rule is: the bigger the distance in hue, the bigger the contrast. A pure triadic color scheme is the extreme instance of hue contrast. Contrast of hue is extremely expressive, especially in brilliant colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue.jpg" />

Here's an example of a strong contrast of hue, using full saturated colors and black+white.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue2.jpg" />

Removing black+white and adding colors closer to each other diminishes the hue contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/book_hue_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/book_hue.jpg" />

As "pure" colors were the first ink-based colors, uses of contrast of hue can be traced back to the early books of the middle ages:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/mondrian_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/mondrian.jpg" />

Mondrian uses the additive primary colors.


Generating Tetradic Color Schemes
--------------------------------

A tretadic color scheme is a set of 4 colors chosen by placing a rectangle on the color wheel and selecting the colors that fall on the corner of the rectangle. This color scheme is basically the same as a double complementary color scheme. Here's an example of color chosen by rotating 90 degrees around the color wheel 3 times.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_tetrad)

Notice how this color scheme has a slight rich cold/warm contrast in the complementary color sets. However, the rectangle does not need to be equal-sided. Here's an example of a color scheme with the same base complementary pair, but with a smaller rectangle width used to pick the other complementary pair. This increases the cold/warm contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/color_scheme_tetrad2)

ITTEN COLD-WARM CONTRAST

It's important to realize the dynamic nature of the cold/warm contrast. People tend to think that "red" is warm and "blue" is cold. As proved by Albers, here's an example of how extremely fragile that balance is.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/albers_example)


Contrast of Extension
---------------------

> "He who first draws lines and then add color will never succeed in producing a clear, intense color effect [...] Color have dimensions and directionality of their own" - Johannes Itten

Itten's contrast of extension relates to the fact that different colors do not have the same perceived volume. If a yellow rectangle and a purple rectangle are set side by side, the yellow rectangle appears much bigger.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_white_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_white.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_extension_white)

This "contrast of extension" varies depending on the background color, neighbor colors, and arrangement.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_black_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_black.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_extension_black)

Goethe and later Itten proposed the following extension values for colors:

* Yellow: 9
* Orange: 8
* Red: 6
* Violet: 3
* Blue: 4
* Green: 6

Here's those numbers visualized. Notice how balanced this color wheel is compared to Itten's normal color wheel with constant color sizes.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_ittens.jpg" />

And a simple processing sketch that calculates ratio between 2 color pairs using those extension values.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_ratios_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_ratios.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/contrast_extension_ratios)

Of course this is a very basic treatment on the fact that colors have different volumes. It could be nice to have a constant to apply in code, but it varies greatly with the background and matching colors. In the end it's a test for your visual perception.


How to Find Opposite Brightness
-------------------------------

For generative drawings we often want to [calculate the perceived brightness](http://www.nbdtech.com/Blog/archive/2008/04/27/Calculating-the-Perceived-Brightness-of-a-Color.aspx) of a color to be able to choose a font or shape color to draw on top of it. This is especially useful when working with random colors. We do this by using a weighted formula that calculates the perceived brightness of a color. We use that brightness approximation to choose the brightness of the overlay color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/opposite_brightness)


Toxiclibs
---------

Now that we know how color works in Processing, we can take a look at the Toxiclibs library that will help us doing generative color. Here's an example on how you can use the _TColor_ class to create and manipulate single colors. Notice how the library stores color values in normalized values (from 0 to 1), so we need to set the Processing colorMode to that.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/toxiclibs_tcolor)

The library has a great collection type called _ColorList_ that allows you to manipulate all colors in the list at once, and do other interesting manipulations.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorlist_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorlist.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/toxiclibs_colorlist)

Toxiclibs has a class called _ColorRange_ that allows you to pick random colors within a specific hue, saturation and brightness. Here's an example of how to use it.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorrange_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorrange.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/toxiclibs_colorrange)

To be able to create generative color themes, Toxiclibs also has a _ColorTheme_ class that can contain many of these _ColorRange_ objects and pick random color themes from them.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheme_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheme.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/toxiclibs_colortheme)

One of the greatest things about toxi.color is the _ColorTheory_ class that gives us access to all the different color theme types we looked at earlier.

ColorTheory

Toxiclibs also has a class for generating gradients.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/gradient_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/gradient.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/color/toxiclibs_gradient)