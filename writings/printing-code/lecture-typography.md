Typography
==========

I'm not sure that anything successful can come out of generative typography, but hey, let's do a class on it. The presentation is mostly a collection of things I think are interesting, and not so much a general world-view of computational typography.

<iframe src="http://player.vimeo.com/video/20759580?title=0&amp;byline=0&amp;portrait=0" width="600" height="338" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen data-slideshow="self"></iframe>

There's so many ranges of expressions you can do with simple type. Even off the paper:

<iframe width="600" height="338" src="http://www.youtube.com/embed/up1d_fagy6Q" frameborder="0" allowfullscreen data-slideshow="self"></iframe>


Short Introduction to Typography
---------------------------------

This is a brief overview of what makes up a typeface.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes10_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes10.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes11_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes11.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes12_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes12.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes13_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/DesigningTypes13.jpg" />

I won't go into much detail about specific typefaces and their usage, but only show a small collection of famous fonts. Notice the difference. Think about where you would use them. Even Helvetica has a specific expression and needs to be chosen wisely.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/typefaces_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/typefaces.jpg" />

I recommend you to watch the [Helvetica The Movie](http://www.helveticafilm.com/).


Rule-based typography
---------------------

Before the computer and programming, a typeface was something a designer would sit down and carve into metal. Funny enough, it's kind of the same procedure to do a typeface today, although designers use a mouse instead. With the computer comes the ability to generate forms, and there's a range of different typefaces that a "natively computational".

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/univers_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/univers.jpg" />

One of the first fonts to focus on a variable set of related shapes was the Univers typeface by Adrian Frutiger. Made in 1954, Frutigers approach to the design of Univers was drastically different than that of others fonts: Instead of focusing on the relation between the letters of the same weight, he focused on creating a system of inter-related weights that would function well against each other. This raises a series of questions: What should the default weight be in order to preserve room for both lighter and bolder variants? How do you distribute the weights?

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont.jpg" />

MetaFont was possibly the world's first parametrized typeface (created in 1977). It was created by Donald Knuth for the typesetting of his life-work [The Art of Computer Programming](http://en.wikipedia.org/wiki/The_Art_of_Computer_Programming). Most fonts are created by designing the outline of the font. When a typeface has to be created in different weights, you cannot just "grow" or "shrink" this outline computationally. A designer has to sit and create new outlines by hand. MetaFont takes a drastically new approach. Instead of being described by its outline, this font is represented by a series of variables inspired by handwriting:

* Pen
* Weight
* Slant
* Superness
* Curlyness

By manipulating these variables you can create very different styles of the MetaFont, as shown in these screenshots.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/metafont_example4.jpg" />

You can read more about metafont in the text "[A Note on Type](http://www.servinglibrary.org/read.html?id=8)" from the magazine [Bulletins of the Serving Library](http://www.servinglibrary.org/). There's also a great talk by [Knuth at Google](http://www.youtube.com/watch?v=xLBvCB2kr4Q) and a link to his original paper on [Mathematical Typography](http://www.math.lsa.umich.edu/~millerpd/docs/501_Winter08/Knuth79.pdf) to be found on the web.

Although the MetaFont is probably unique, this approach inspired a whole new set of typefaces bundled under the name [Type Systems](http://www.typotheque.com/articles/designing_type_systems).

I'd like to talk a little bit about the design process of the Greta type system.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta.jpg" />

[Greta](http://www.typotheque.com/blog/greta_system) is a universal type system. It was conceived from the start to be a type system, and all aspects of the font are chosen in relation to the bigger picture. However, it is not generated by code. Each letter in each weight is designed by hand. Here's an overview of some of the problems the designer met when designing the typeface. When designing font faces in code, these are good rules to keep in mind.

First of all, the shape of the font must be recognizable in both the lightest and boldest weights. When does the shape stop to work? It takes great planning.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process.jpg" />

Then he planned all of the different weights in relation to each other. If the regular font starts too bold, there's no room to grow.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process2.jpg" />

Some conditional handling must be implemented: Dots become squares on lighter weights. Dollar signs become condensed. The lowercase "g" goes from double-story to single-story. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process3.jpg" />

If you overlay the different weights on top of each other, you realize the algorithmic approach to design that was used for Greta. Could it have been designed in code?

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/greta_process4.jpg" />

A whole different aspect of font design is 3-dimensional typography. Most of these fonts are more artsy in nature, where the font itself is as much an art project in itself as it is a font. There is [a whole book about it](http://www.amazon.com/Dimensional-Typography-Words-Space-Report/dp/1568980892).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/ortho_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/ortho.jpg" />

[Ortho Type](http://www.ortho-type.it) is a 3D typeface that ships with custom software that allows the user to manipulate the 3D view, width, height, depth, thickness and color of the typeface via UI controls. [You can try it out here](http://www.ortho-type.it/beta033/index.html).

[ECAL published a book about scripted typography](http://www.jrp-ringier.com/pages/index.php?id_r=4&id_t=&id_p=7&id_b=1604), however it's out of print and impossible to get a hold of.

Project Examples
----------------

So why do I say that I don't believe in computational typography? Because typefaces have a distinct function: readability. This can often only be achieved by fine-tuning every single point by hand. This is not something that programming is good for.

Still I see a ton of these projects. Destroying beautiful fonts by moving their outlines:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes141_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes141.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes143_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes143.jpg" />

Who cares about making a font uglier?

These next examples go a little beyond that. I still think half of them are unsuccessful, but at least there's some kind of compositional beauty. sThis is a showcase of final projects from a class on generative typography. [Read more on the class website](http://generative-typografie.de/).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes73_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes73.jpg" />

Here's a few examples of projects that I really like, because it's more a case of testing a specific set of rules, than it is to move outline points around randomly:

John Maeda describes this project by Peter Cho as "unique for marrying extremely simple numerical form with true elegance in craft". Each letter is generated with only 2 arcs, and the entire typeface is derived from twenty-six groups of only ten numbers. The project is from 1997.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes86_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes86.jpg" />

Another project from the Aesthetics and Computation Group at MIT. It's called "Robotic Arm as Typeface", and that's exactly what it is. A typeface made up of a single, moving robotic arm. The project is from 2001.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes93_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes93.jpg" />


Here's some examples of the work of Jonathan Puckey. I really like them because it's not so much about manipulating outlines of a font. He's building new designs from a set of simple rules.

Here's his project "Tile Tool" that draws patterns on top of black and white base images. He also made a project called "Typographic Rhytm" where he picks a font weight for each letter depending on the time it took you to type the character.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes113_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes113.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes114_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes114.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes115_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes115.jpg" />

This next project is really great. It's a dynamic typeface made for the small film studio "Lava Films". It's based on the concept of natural disasters: Things moving to non-anticipated places. So is the font.

<iframe src="http://player.vimeo.com/video/23500126?title=0&amp;byline=0&amp;portrait=0" width="600" height="338" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava5.jpg" />

.. but it's not created with programming.

Here's a few more projects that go beyond the paper. Here's it's an automatic brush.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/aTouchOfCodes223_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/aTouchOfCodes223.jpg" />

Here's a project combining evolution and typography. "Growing Data" from 2008.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes77_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes77.jpg" />

Of course there's Karsten Schmidts evolutionary typeface, that he made for "Print" magazine.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes135_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/GenerativeGes135.jpg" />


Fonts in Processing
-------------------

I'm only going to show you a very few things about fonts in Processing.

Processing ships with built-in font handling. To manipulate text, we need to know how to get the basic measurements of the things we draw. Here's an example of how to find the edges of a word you're drawing on the screen.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/measurements_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/measurements.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_measurements)

However, the implementation of fonts in Processing leaves much to be desired. When you go to "Create Font" in Processing, a bitmap image of that font is created (.vlw file). Whenever you need to draw a font on the screen, Processing will look up that bitmap image, grab the characters from it, and draw them on the screen. This has one big disadvantage:

1. Fonts are normally defined by Vector points, but Processing handles them as bitmaps. The bigger the font, the bigger the file size of that bitmap file is. For print designers this is not good, as we're often working with files with really high resolutions, and your program will get really slow when drawing giant text.

Instead, external libraries has been made for Processing that can load .ttf font files, read the font outlines, and draw them on the screen. When you're working with large files in Processing, you probably want to use one of these libraries. For these exercises we'll be using the [Geomerative](http://www.ricardmarxer.com/geomerative/) library for Processing 2.0.

Besides vector font handling it has a bunch of interesting methods for computational geometry. You can [find the documentation here](http://www.ricardmarxer.com/geomerative/documentation/index.html).


Rule-based fonts in Processing
-------------------------------

When working in code, we do not want to plot all outline point manually. It's much slower than doing it in Illustrator, and it's not what code is good for. On the other hand, code is great for dynamic, rule-based drawing. Here's a few examples of how to create simple letters from simple rules.

Here's first a simple "H" made in Processing:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_beginshape_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_beginshape.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_beginshape)

However, this is not scalable. What if you want to draw "H" several places in different sizes? Then it's easier to normalize the numbers and scale them up when drawing.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_beginshape_normalized_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_beginshape_normalized.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_beginshape_normalized)

Here's a font made of booleans plotted on a 4x6 matrix.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/pixel_font_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/pixel_font.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/pixel_font)

Let's look at Peter Cho's pie font example again.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes86_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/CreativeCodes86.jpg" />

Here's a Processing sketch implementing the same rules. It really doesn't take much work.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/piefont_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/piefont.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/pie_segments_example)


Playing With Font Outlines
--------------------------

First we need to figure out how to load a font and get its outline. This sketch shows how to that.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_to_points)

Now that we have the outline, we can use those points to place objects along the line.
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_dots_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_dots.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_to_points_dots)
	
Here's a little more complex sketch that uses beginShape to draw curved lines between the outline points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative4.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_to_points_generative)

We can also fill the outline instead of drawing stroked lines.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative_filled_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/typography/font_to_points_generative_filled.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/typography/font_to_points_generative_filled)