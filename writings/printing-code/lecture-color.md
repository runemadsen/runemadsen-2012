<iframe width="600" height="338" src="http://www.youtube.com/embed/MXQozTxQSiE" frameborder="0" allowfullscreen></iframe>

The woman in the red dress is a character in a training program built by the rebels in the Matrix. More specifically, [_Mouse_](http://en.wikipedia.org/wiki/List_of_minor_characters_in_the_Matrix_series#Mouse) designed her... and he picked the color red for her dress. Although many find it hard to work creatively with color, very few people would question why he chose this. It's attractive, erotic, wild and draws attention.

There are 2 reasons why I choose to show this scene:

1. The use of color in this movie is fantastic. A vague green color is used for all scenes in the Matrix. The captives are dressed in gray. Scenes in the Nebuchadnezzar are tinted blue to symbolize clouds, heaven and light. Everything has a symbolic meaning.

2. Once you learn to control color, you'll be like Neo moving through the Matrix. You'll see things that no one else sees.

I've had an obsession with color for many years. I find it to be one the hardest things to master in the graphic arts, as it's both very subjective and highly dynamic (our perception of a single color change depending on what other colors we pair it with).

	examples of Itten with a color changing
	
So how do you go about finding color matches that express meaning?

> "He who first draws lines and then add color wil never succeed in producing a clear, intense color effect [...] Color have dimensions and directionality of their own" - Johannes Itten

	Example from p. 17, Johannes Itten
	
	
What is Color?
--------------

Direct white light through a prism > you get a range of colors

	Image of colors in prism (maybe pink floyd - fun)
	
Why does the sun turn red when setting? The athmosphere is a filter
	

Subtractive vs. Additive Color Systems 
--------------------------------------

Due to the shere number of different color systems, it can seem difficult just to get started playing around with color. Most modern computer users know color systems like RGB and CMYK, but many books on the subject speak of the primary colors as red, green and yellow. This is due to a single physiological fact:

* All colors created with light will combine in an additive way, meaning that if you mix all colors together, the resulting color will be white
* All colors created with paint or ink will combine in a subtractive way, meaning that if you mix all colors together, the resulting color will be black (pigments work by absorbing light and reflecting the rest).

Without thinking too much about it, the conclusion is that most painters treat red, green and yellow (or cyan, magenta and yellow) as the primary colors, whereas programmers treat red, green and blue as the primary colors. Because the color spectrum is a sliding scale, this is all rather arbitrary.

[explain CMYK]

Because we are working in both worlds, we are faced with a problem: we are designing on a screen that uses additive blending, but printing on a printer that uses subtractive blending. Luckily, Processing does not have a native way of working with CMYK, and the AMS printers are optimized for the Adobe RGB 1998 color profile ... everything is additive from now on.

Because of this, Goethe and Itten's color circled use RGY. They are based on the limitations in ranges of color at the time, and are therefore rought estimates:

> "Although these artistic complements may not be precise under the scientific definition, most artistic color wheels are laid out roughly like HSV" - Wikipedia

RGB vs HSB
----------

Why we work with HSB and not RGB


Objective vs. Subjective
------------------------

Few things objectively, a lot is subjective


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
	as seen on p. 31. Use text p. 29.
	Use this link: http://serennu.com/colour/rgbtohsl.php
	It's easy because HSB hue is 360 degrees, so complimentary is just other side
	(talk about how purple is the mising piece, and that's why no one uses purple)
	This is why we use HSB. It's soo easy to do computations on color (finding complimentary color no matter what h, s or b)


Johannes Itten's Art of Color
-----------------------------

Studied color theory his whole life

> "The doctrine to be developed here is an aesthetic color theory originating in the experience and intuition of a painter [...] Color effects are in the eye of the beholder." - Johannes Ittens


### Itten's color harmoy

Anything that has equal distance in hue or saturation/brightness
Show sketch that displays different ways of picking a random color scheme

### Itten's contrasts

Itten thinks color design relies on 7 different types of contrast (explain all of them with examples from graphic design world + code examples)
	




Combining color is a 2-step process: 1) Plan (objective) 2) Implement and tweak (subjective). Tell story about Matisse who first wrote his colors on the sketch papers, and then tweaked them when painting.



