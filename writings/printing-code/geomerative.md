Geomerative
===========

In the week about typography we looked at Geomerative and how to use the RFont class. Last week we looked at loading SVG images as RShape objects. Here's a more in depth look at Geomerative and its base classes.

Why use Geomerative?
--------------------

The first thing you learn in Processing is to use the basic drawing functions, like line(), rect(), ellipse() or triangle(). When called, these functions draw a shape directly on the screen, using the current fill and stroke.

Often it makes sense to not only draw the shapes directly on the screen, but also save the numbers used for the shapes in variables. Here's a very simple example on how you would do that without Geomerative

	int x = 80;
	int y = 80;
	int rectWidth = 100;
	int rectHeight = 60;
	rect(x, y, rectWidth, rectHeight);

This would allow you to reuse these variables in your code, use them to align other objects to the rectangle, and allow you to change all of this by changing a single variable (instead of looking through your code and changing hard coded number a bunch of places).

However, it gets a little messy with all those variables. Exactly like we use PVector (or Vec2D or RPoint) to encapsulate a single x,y location, we can use Geomerative classes to hold the values we use to draw our complex shapes. This can be simple vector points with an x,y, but most of the time it will also be bezier points with control point values.

The class you use to hold the values for shapes is called RShape. Here's an example that shows you how to draw simple shapes with an RShape, instead of Processing's drawing functions.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/basic_shapes_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/basic_shapes.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/basic_shapes)

But drawing ellipses and rectangles won't get us far. Remember beginShape() and endShape()? RShape is built to handle vertex and bezierVertices too! Here's an example where I draw the sample wobbly shape first using beginShape(), then using RShape: 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/beginshape_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/beginshape.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/beginshape)

Notice how the RShape object has a draw() function that will draw the shape with the current fill and stroke in the current 0,0 position in Processing. To move it, you need to call translate before drawing it on screen.

Now that we have an RShape that holds the vertices of our shape, we can do fun stuff with the shape, using some of the built-in RShape functions.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/drawing_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/drawing.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/drawing)

There are many ways to create an RShape, and adding the vertices one by one is just one example. You've already seen that we can load an SVG image into an RShape, in the [Sigur Ros](https://github.com/runemadsen/printing-code/tree/master/class_code/homework/sigur_ros) assignment from last week.

	TODO: Adding multiple RPaths in an RShape

Two set of classes
------------------

	TODO: Show how RPolygon -> RContour -> RPoint is the simplified cousins of RShape -> RPath -> RCommand 


RShape > RPath > RCommand
-------------------------

The RShape is a pretty sophisticated object, and it has a ton of functionality. What's most important is that each single RShape has  an array of other RShapes, and an array of RPaths. These may or may not be empty.

In the end, RShapes are made up by RPath objects, that themselves has an array of RCommand objects. The RCommand class is the guts of Geomerative, as it holds the command for drawing a single curve or line. When I called addLineTo() and addBezierTo() on the RPath, we're actually telling it to save an RCommand with those values in the last RPath object it holds.

We can use this info to get the vertex points back from the RShape. Here's an example where I'm drawing small ellipses at the places where I placed points in the first place:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/rcommand)

So what is an RCommand? Let's take a close look at a much simpler example. Here I'm creating a single RCommand object to draw a curved line.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rcommand_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/rcommand_simple)


RPolygon > RContour > RPoint
----------------------------

Remember in the typography class where we converted a character to an RPolygon, and a group of characters to a group of RPolygons? What actually happened is that we took an RFont (which is basically an RShape) and converted all the beziers to static points along the outline.

Here's an example where we do the exact same thing for an RShape 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rshape_outline_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/geomerative/rshape_outline.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/geomerative/rshape_outline)


More info
---------

When you download the Geomerative library, it comes with a ton of great examples for you to explore. They are a bit advanced, but really showcase the power of the library.

You can also find the entire [Geomerative library reference online](http://www.ricardmarxer.com/geomerative/documentation/index.html). This is great if you're looking for specific functionality, and for knowing what parameters each function takes.