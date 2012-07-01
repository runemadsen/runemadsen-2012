On the most basic level we have space and form. Even at the most basic level, these forms mean something, and this week you'll be working with very simple forms. You will learn to generate simple forms via code, and learn to _see_ the meaning of their interaction.
	
	show first a white rectangle (space), and then a famous symbol in it (form)

First we choose a specific format.

	Rectangular
	Horizontal
	Vertical
	
Then we can put things it it

	Rectangle
	Circle
	Triangle

It matters where we place forms in space. A circle can seem lost in space

	show a tiny circle in the middle
	
... and dominant in space just by changing its placement.

	show a big circle in the middle
	
The same way a rectangle can lay dormant

	Show a horizontal rectangle
	
And become agitated by just changing its placement

	Show the same rectangle rotated
	
The placement and thickness of a single line can make a world of difference

	show example from form chapter in DE
	
	
Simple Form Examples
--------------------
	
Even with a single format and a single shape, you can create thousands of expressions to fit you communicative needs. When you really start to look, everything - even the smallest detail - is design. Choices in placement, proportions and relationships between shapes all drastically help shape the meaning of a graphic.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_morse_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_morse.jpg" />

Paul Rand uses circles and rectangles to simulate morse code. The message is for executives in the radio industry, and even without noticing the morse code allegory, the shapes still have a strong way of calling attention to the graphic.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/knopf_ropes_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/knopf_ropes.jpg" />

Alfred Knopf uses images of ropes as vertical lines to create movement and action in this book cover. The horizontal text creates a balance between the vertical and horizontal planes. Notice the symbolic crucifix shaped by the vertical and horizontal shapes.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_icecream_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_icecream.jpg" />

A circle and a triangle. The most perfect ice cream in the world.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_lollipop_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_lollipop.jpg" />

10 out of 10 people would say that this is a lollipop. Why?

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_hat_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_hat.jpg" />

Great use of vertical form. The line height suggests measurements, and emphasizes message about growing taller and taller.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_nowwayout_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_nowayout.jpg" />

Simple polygons create movement and excitement. The whole story line is right there in the poster.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_artdirectors_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rand_artdirectors.jpg" />

A graphic poster for the art directors hall of fame by Paul Rand. Rand uses "A", "D" and straight lines scattered across the page to create a bouquet of creativity.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/brockmann_bike_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/brockmann_bike.jpg" />

Brockmann plays with focus by placing the motorcycle in front. This would be a very different graphic if the forms were reversed.

Computational vs. Organic Form
------------------------------
	
Some of these shapes have inherent algorithmic characteristics. Even Michelangelo will suffer defeat if competing with a computer in drawing a perfect circle. Changing the size of a circle in code is many times faster than doing it by hand. 

	image of computed cirlce to the left and hand drwn circle to the right

Other shapes have inherent organic qualities, and are harder to replicate on a computer. You can draw a random line across a piece of paper in less than one second, but it will take much longer to code it. 

	image of simulated line to the left and hand drawn line to the right

This poses a series of questions: When working with computational form, should we prefer some shapes to other? How far should we go to simulate organic, human techniques in the digital world? Is it fake recreating pen pressure on a line, when the output is a pixel grid?

Code: Simple Forms
------------------

So how do you approach creating form in code - especially form with meaning? Processing ships with simple and more advanced ways of drawing shapes, the simplest being the shape functions.

	rect()
	ellipse()
	triangle()
	
With these, you can take control over the positioning, or you can specify a range of possible outcomes.

	Show a sketch that draws a a rectangle and a circle at random places and sizes, in black and white

Code: Polygons
--------------

More advanced polygons

	vertex
	bezier
	
For example you can draw a perfect circle or a rectangle with vertex points

	Show code for drawing a perfect circle (focus on the need for a start and end vertex point)
	Show code for drawing a rectangle
	
With polygons you have the same basic choice: constraint it to a specific outcome, or use random to specify a variety of outputs. Are you choosing or is the code choosing? This is an aspect of generative design we'll look at later in the semester.

	Show sketch with generative use of beziercurves
	
Repetition
----------

We can introduce more complexity by introducing more forms. Even with simple repetition, we can build complex scenarios. Repetition is banal when writing code. It is the distribution of the repeated elements that creates meaning. The repetition of rectangles has - of course - a much greater significance in computational design, because the pixel grid is the one and only way of expression.

	Show grid of rectangles with different meanings, from DE
	
Code: Repetition and Spacing
----------------------------

	Show Paul Rand repetition examples
	Re-create in Processing
	
	Show how to do simple spacing in loops
	
	Show how to control the spacing of the elements by using i (smaller and smaller or larger and larger spacing)

	Show circle packing from GG

	* more?

Code: Project Examples
----------------------

	Find something that also uses repetition
		
	Show Eno Henze's [Scharze Sonnen](http://enohenze.de/ninety-five/)
	Show code how to create it
	- Create this yourself

	Show Eno Henze, p. 60 in GG
	Show code that creates something like it
	
	Show Eno Henze's [Ambushes](http://enohenze.de/ambush/)
	Show code: henze_ambushes_example.pde
	
	Show Stefan Sagmeister p. 128 in GG
	Show code that creates something like it
	
	Show Roman Verostko, o. 156 in GG
	Show code that creates something like it