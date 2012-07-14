!!!!! PUT IN MORE EXAMPLES WITH PROCESSING CODE
Form is.....



On the most basic level we have space... 

	// autorun autohide
	void setup()
	{
		size(400, 250);
		background(255);
	}
	
...and form. 

	// autorun autohide
	void setup()
	{
		size(400, 250);
		background(255);
		noStroke();
		fill(0);
		rect(150, 75, 100, 100);
	}

Even here these forms mean something, and this week you'll be working with simple forms to create meaning. You will learn to generate simple forms via code, and learn to _see_ the meaning of their interaction. Remember, simplicity in output requires simplicity in code.

Format
------

All designs starts with a constrained area - let's call it the _format_. The format dictates the way we understand the forms in it.

	// autorun autohide
	void setup()
	{
		size(200, 200);
		background(255);
	}
	
The rectangular format makes no attempt to emphasize any direction. It concentrates the viewport into a well-known shape, and makes it easy to understand the placement of the elements inside of it.
	
	// autorun autohide
	void setup()
	{
		size(450, 150);
		background(255);
	}
	
The horizontal format is very natural, shaped to the way we experience the world. The human brain is optimized for analyzing horizontal movement (that orange thing moving behind the trees is probably a tiger!) in opposed to vertical movement.

	// autorun autohide
	void setup()
	{
		size(180, 300);
		background(255);
	}

The vertical format stands out and calls attention to itself. It's more aggressive and seems more "designed", which is probably why most posters have a vertical format.


Simple Forms
------------

When we have the format in place we can place shapes in it. With color difference we can create anything from simple to very complicated shapes. By playing around with these shapes, you can create meaning.

The rectangle is a mastodon.
	
	// autorun autohide autohide
	void setup()
	{
		size(400, 250);
		background(255);
		noStroke();
		fill(0);
		rect(150, 75, 100, 100);
	}
	
Notice how the circle appears smaller than the rectangle, even though they have equal dimensions.

	// autorun autohide
	void setup()
	{
		size(400, 250);
		background(255);
		noStroke();
		fill(0);
		ellipse(width/2, height/2, 100, 100);
	}

The triangle is the simplest polygon possible.

	// autorun autohide
	void setup()
	{
		size(400, 250);
		background(255);
		noStroke();
		fill(0);
		triangle(150, 75, 250, 75, 200, 175);
	}
	
These shapes already provide a range of expressions, and you need to chose them wisely as they all have a distinct style. Everything is design. The circle is not a native shape of the cheese, but chosen to convey smoothness and round taste.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_circle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_circle.jpg" />

A rectangle is used to streamline the packaging for a carton for dictating machines, conveying technology.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_square_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_square.jpg" />

A triangle is used to create movement (neither the square or the circle has movement) for a knife product.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_triangle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_triangle.jpg" />


More Advanced Forms
-------------------



Advanced forms can be created in Processing using the beginShape

	vertex
	curveVertex (for lazy people)
	bezierVertex (use bezier tool here, and link to it in these slides: http://processing.org/reference/tools/)

For example you can draw a perfect circle or a rectangle with vertex points

	Show code for drawing a perfect circle (focus on the need for a start and end vertex point)
	Show code for drawing a rectangle
	
Slowly explain QUAD and stuff like that


Computational vs. Organic Form
------------------------------

Some of these shapes have inherent algorithmic characteristics. Even Michelangelo will suffer defeat if competing with a computer in drawing a perfect circle. Changing the size of a circle in code is many times faster than doing it by hand. 

	image of computed cirlce to the left and hand drwn circle to the right

Other shapes have inherent organic qualities, and are harder to replicate on a computer. You can draw a random line across a piece of paper in less than one second, but it will take much longer to code it. 

	image of simulated line to the left and hand drawn line to the right

This poses a series of questions: When working with computational form, should we prefer some shapes to other? How far should we go to simulate organic, human techniques in the digital world? Is it fake recreating pen pressure on a line, when the output is a pixel grid?
	

Placement
---------

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
	
	Show slides from design talk about white space

	
Repetition
----------

We can introduce more complexity by introducing more forms. Even with simple repetition, we can build complex scenarios. Repetition is banal when writing code. It is the distribution of the repeated elements that creates meaning. The repetition of rectangles has - of course - a much greater significance in computational design, because the pixel grid is the one and only way of expression.

	Show grid of rectangles with different meanings, from DE

	Show Paul Rand repetition examples
	Re-create in Processing
	
	Show how to do simple spacing in loops
	
	Show how to control the spacing of the elements by using i (smaller and smaller or larger and larger spacing)

	Show circle packing from GG

	* more?
	

Randomness
----------

We have a whole class on this, so not going into detail.

Random positioning

With polygons you have the same basic choice: constraint it to a specific outcome, or use random to specify a variety of outputs. Are you choosing or is the code choosing? This is an aspect of generative design we'll look at later in the semester.

	Simple form repetition:
	Show Eno Henze's [Scharze Sonnen](http://enohenze.de/ninety-five/)
	Show code how to create it
	- Create this yourself

	Vertex repetition:
	Show Eno Henze's [Ambushes](http://enohenze.de/ambush/) as sketch with generative use of bezier curves
	Show code: henze_ambushes_example.pde
	

Form Examples
-------------

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


Computational Form Examples
---------------------------

These are just a few examples of use of form in computational graphic art. 

	Show Eno Henze, p. 60 in GG
	Show code that creates something like it
	
Roman Verostko	

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko3.jpg" />
	

Conclusion
----------

Arsenal of expressions with simple forms:
http://www.fredgriffinart.com/GRAPHICDESIGN/design.htm

-> assignment