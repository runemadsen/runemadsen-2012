Geomerative
===========

In the week about typography we looked at Geomerative and how to use the RFont class. Last week we looked at loading SVG images as RShape objects. Here's a quick look at why Geomerative is so powerful.

Geomerative Shapes
------------------

The first thing you learn in Processing is to use the basic drawing functions, like line(), rect(), ellipse() or triangle(). When called, these functions draw a shape directly on the screen, using the current fill and stroke.

Often it makes sense to not only draw the shapes directly on the screen, but also save the numbers used for the shape in variables. Here's a very simple example for that:

	int x = 80;
	int y = 80;
	int rectWidth = 100;
	int rectHeight = 60;
	rect(x, y, rectWidth, rectHeight);

This allows you to draw a lot of shapes using the same variables, and by tweaking the code one place, all of the shapes change. However, it gets a little messy with all those variables.

Like we have a PVector / Vec2D / RPoint class to hold x and y values, Geomerative also ships with an RShape class that is made to hold values for shapes. You can use some basic functions in Geomerative to generate RShapes with basic shapes in them, as shown in this sketch:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/basic_shapes_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/basic_shapes.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/basic_shapes)

Remember beginShape() and endShape(). Well, if you want to save those points in an object, RShape is here for you. Here's an example drawing the sample wobbly shape from the form class, first with beginShape(), then with RShape: 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/beginshape_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/beginshape.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/beginshape)

When you call draw(), the shape will draw with the current fill and stroke in 0,0. But now that we have the shape values as an object, we can start do use the Geomerative RShape functions to do fun stuff with it:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/drawing_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/drawing.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/drawing)

Remember that you can also get an RShape by loading an SVG, like shown in the [Sigur Ros](https://github.com/runemadsen/printing-code/tree/master/class_code/homework/sigur_ros) assignment from last week.

	Multiple RPaths in an RShape

Static Outline
--------------

	Convert RShape to RPolygon, and set segment length.... just the stuff from typography

		// all the cool stuff you can do to get the outline points, etc. Look through the class

RCommand
--------

Remember in the typography class where we converted a character to an RShape, and a group of characters to a group of RShapes? Well, the RShape is a pretty sophisticated object, and it has a ton of functionality. What's most important is that each single RShape has  an array of other RShapes, and an array of RPaths. These may or may not be empty.

In the end, RShapes are made up by RPath objects, that themselves has an array of RCommand objects. The RCommand class is the guts of Geomerative, as it holds the command for drawing a single curve or line. When I called addLineTo() and addBezierTo() on the RPath, we're actually telling it to save an RCommand with those values in the last RPath object it holds.

We can use this info to get the vertex points back from the RShape. Here's an example where I'm drawing small ellipses at the places where I placed points in the first place:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/rcommand)

So what is an RCommand? Let's take a close look at a much simpler example. Here I'm creating a single RCommand object to draw a curved line.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/rcommand_simple)



	// RCommand closest


Geometry with Geomerative
-------------------------

	contains

	BinaryOps - subtracting two shapes form each other

	BinaryIntersection - to create masks

	HelloAdaptChildren - use text on a curve