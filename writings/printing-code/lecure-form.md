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
	
Even with a single format and a single shape, you can create thousands of expressions to fit you communicative needs.

	images of famous old designs that shows single shapes
	
Some of these shapes have inherent algorithmic characteristics. Even Michelangelo will suffer defeat if competing with a computer in drawing a perfect circle. Changing the size of a circle in code is many times faster than doing it by hand. 

	image of computed cirlce to the left and hand drwn circle to the right

Other shapes have inherent organic qualities, and are harder to replicate on a computer. You can draw a random line across a piece of paper in less than one second, but it will take much longer to code it. 

	image of simulated line to the left and hand drawn line to the right

This poses a series of questions: When working with computational form, should we prefer some shapes to other? How far should we go to simulate organic, human techniques in the digital world? Is it fake recreating pen pressure on a line, when the output is a pixel grid?

So how do you approach creating form in code - especially form with meaning? Processing ships with simple and more advanced ways of drawing shapes, the simplest being the shape functions.

	rect()
	ellipse()
	triangle()
	
With these, you can take control over the positioning, or you can specify a range of possible outcomes.

	Show a sketch that draws a a rectangle and a circle at random places and sizes, in black and white

More advanced polygons

	vertex
	bezier
	
With polygons you have the same basic choice: constraint it to a specific outcome, or use random to specify a variety of outputs. Are you choosing or is the code choosing? This is an aspect of generative design we'll look at later in the semester.

	Show sketch with generative use of beziercurves

We can introduce more complexity by introducing more forms. Even with simple repetition, we can build complex scenarios. Repetition is banal when writing code. It is the distribution of the repeated elements that creates meaning. The repetition of rectangles has - of course - a much greater significance in computational design, because the pixel grid is the one and only way of expression.

	Show grid of rectangles with different meanings, from DE
	
This week your assignment will be to create 3 simple, geometric shapes that each has a specific meaning. I will go through some techniques for creating forms:

	Show code about distancing objects next to each other when repeating
		circle packing from GG
		grid spacing

	Show Eno Henze, p. 60 in GG
	Show code that creates something like it
	
	Show Stefan Sagmeister p. 128 in GG
	Show code that creates something like it
	
	Show Roman Verostko, o. 156 in GG
	Show code that creates something like it

