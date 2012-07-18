Form is the lowest level of graphic design possible: making individual shapes out of color. 

On the most basic level we have space... 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/space_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/space_small.jpg" />
	
...and form. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/form_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/form.jpg" />

Even here these forms mean something, and this week you'll be working with simple forms to create meaning. You will learn to generate simple forms via code, and learn to _see_ the meaning of their interaction. Remember, simplicity in output requires simplicity in code.

Format
------

All designs starts with a constrained area - let's call it the _format_. The format dictates the way we understand the forms in it.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_square.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_square.jpg" />
	
The rectangular format makes no attempt to emphasize any direction. It concentrates the viewport into a well-known shape, and makes it easy to understand the placement of the elements inside of it.
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_horizontal.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_horizontal.jpg" />
	
The horizontal format is very natural, shaped to the way we experience the world. The human brain is optimized for analyzing horizontal movement (that orange thing moving behind the trees is probably a tiger!) in opposed to vertical movement.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_vertical.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/format_vertical.jpg" />

The vertical format stands out and calls attention to itself. It's more aggressive and seems more "designed", which is probably why most posters have a vertical format.


Simple Forms
------------

When we have the format in place we can place shapes in it. With color difference we can create anything from simple to very complicated shapes. By playing around with these shapes, you can create meaning. Processing ships with the simple rect(), ellipse() and triangle() functions.

The rectangle is a mastodon.
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rect_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/rect.jpg" />
	
Notice how the circle appears smaller than the rectangle, even though they have equal dimensions.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/circle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/circle.jpg" />

The triangle is one of the simplest polygons possible.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/triangle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/triangle.jpg" />
	
These shapes already provide a range of expressions, and you need to chose them wisely as they all have a distinct style. Everything is design. 

A rectangle is used to streamline the packaging for a carton for dictating machines, conveying technology.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_square_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_square.jpg" />

The circle is not a native shape of the cheese, but chosen to convey smoothness and round taste.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_circle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_circle.jpg" />

A triangle is used to create movement (neither the square or the circle has movement) for a knife product.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_triangle_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/packaging_triangle.jpg" />


More Advanced Forms
-------------------

Now that we realize how form can convey meaning, we can start to play around with more complex shapes. Polygons can be created in Processing using the beginShape() and endShape() methods. You call beginShape() when starting a new shape, then you call any of the vertex functions to create the points on the outline of a shape, and then call endShape() to close the shape.

Points created with the vertex() function always connect to the next point in a straight line. This can be used for e.g. drawing a hexagon.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/hexagon_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/hexagon.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/hexagon_with_vertex)
	
Points created with the curveVertex() function will draw a curved line, guided by the point before it and after it. This means that you need a minimum of 4 points to show a single curve, as the first and last point will always be invisible. In this sketch I add 3 to the vertex loop to continue the vertex on top of points already on the line, in order to draw enough guiding points for the circle to complete.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/curvevertex_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/curvevertex.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/curve_vertex_circle)

The bezierVertex function is by far the most flexible of the 3 vertex functions, as it draws points using bezier curves. Most people have a faint idea of how bezier curves work, but let's take a deeper look on how to draw things with Bezier curves.

Bezier curves are essential to computational form, as it's the way most visual programming languages, as well as software tools like Photoshop and Illustrator (with the Pen tool), approach the drawing of complex polygons. It's native to the design process of everything from font design to the design of cars.

Although invented by the mathematician Paul de Casteljau, bezier curves got their name from Pierre Bézier who first used these curves in early CAD programs to design cars for Renault. There are many different kinds of bezier curves (linear, quadratic, cubic), but we'll focus on cubic beziers, as it's the implementation of bezier curves used in Processing.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/bezier_explain_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/bezier_explain.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/bezier_vertex)

A bezier curve is a formula that describes how to draw a line from one point to another, using 2 control points. The two control points determine the curve of the line going to that specific point. In Processing, you always start a shape with a simple vertex point, and then draw bezierVertex points after it.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/bezier_movement_small.gif" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/bezier_movement.gif" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/bezier_vertex_movement)

It can be hard to understand how these two control points tell the line to curve like that. This animation shows how the curve of the line is calculated by doing simple vector math on the anchor points and control points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/wave_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/wave.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/beginshape_wave)

By using bezierVertex() you can create complicated shapes in Processing. If you understand how to use it, you can now create any shape possible.

TODO: examples of complicated form from graphic design history


Computational vs. Organic Form
------------------------------

Some of these shapes have inherent algorithmic characteristics. Even Michelangelo will suffer defeat if competing with a computer in drawing a perfect circle. Changing the size of a circle in code is many times faster than doing it by hand. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/computational_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/computational.jpg" />

Other shapes have inherent organic qualities, and are harder to replicate on a computer. You can draw a random line across a piece of paper in less than one second, but it will take much longer to code it. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/organic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/organic.jpg" />

This poses a series of questions: When working with computational form, should we prefer some shapes to other? How far should we go to simulate organic, human techniques in the digital world? Is it fake recreating pen pressure on a line, when the output is a pixel grid? Is this an argument for a new aesthetic?
	

Placement
---------

It matters where we place these forms in space. A circle can seem lost in space

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/lost_in_space_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/lost_in_space.jpg" />
	
... and dominant in space just by changing its placement and proportion.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dominant_in_space_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dominant_in_space.jpg" />

However, it's not only the size of the shapes, but also the size of the format that matters. Here's the exact same circle that before looked to be lost in space, now dominant in relation to its format.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dominant_format.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dominant_format.jpg" />

These are the options every designer must think about, weigh, and choose between. A rectangle can lay dormant in space...

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dormant_rect_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/dormant_rect.jpg" />
	
... and become agitated by just changing its placement

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/agitated_rect_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/agitated_rect.jpg" />
	
The important thing here is that how we order things matter. With more form comes more organization. Often, it's as much the white space that needs to be in balance, as it's the shapes themselves.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_1_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_1.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_2_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_2.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_3_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_4.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_5_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_5.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_6_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_6.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_7_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_7.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_8_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_8.png" />

So how do we solve this problem of placement?

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_9_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_9.png" />

One way is to adhere to a grid. We will talk much more about this in a coming class.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_10_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_10.png" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_11_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_11.png" />

To place an object within a given format requires basic math. Therefore many of the methods we use to align and place objects on the screen, like the golden ratio, have inherent algorithmic characteristics.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_calculations_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/placement_calculations_small.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/placement_calculations)


[examples of placement]
	
Basic Repetition
----------------

We can introduce more complexity by introducing more forms. Even with simple repetition, we can build complex outputs. Repetition is banal when writing code. It is the distribution of the repeated elements that creates meaning. The repetition of rectangles has fundamental significance in computational design, because the pixel grid is the lowest level of expression. In the center of all of this is of course ... the for loop.

	Show grid of rectangles with different meanings, from DE

	Show Paul Rand repetition examples
	Re-create in Processing
	
	Show how to do simple spacing in loops
	
	Show how to control the spacing of the elements by using i (smaller and smaller or larger and larger spacing)

	Show circle packing from GG

	* more?
	

Basic Randomness
----------------

The basic concept of randomness is that you can let the computer choose a random number between two numbers. This can be used to make the same code produce extremely varied outputs, and is often used for positioning and shape proportions.

With polygons you have the same basic choice: constraint it to a specific outcome, or use random to specify a variety of outputs. Are you choosing or is the code choosing? This is an aspect of generative design we'll look at later in the semester.

	Simple form repetition:
	Show Eno Henze's [Scharze Sonnen](http://enohenze.de/ninety-five/)
	Show code how to create it
	- Create this yourself
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/eno_ambushes_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/eno_ambushes.jpg" />

Another piece by Eno Henze where he uses simple repetition and random form. This is a great example of the power of using random positioning with vertex points within beginShape().

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/henze_ambushes_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/henze_ambushes_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/form/henze_ambushes_example)

The same technique can easily be created with Processing and beginShape().
	

Form Examples
-------------

Even with a single format and a single shape, you can create thousands of expressions to fit you communicative needs. When you really start to look, everything - even the smallest detail - is design. Choices in placement, proportions and relationships between shapes all drastically help shape the meaning of a graphic. When you look at the work of some of the best known graphic designers, you realize that they had an incredible eye for all of this. It takes talent and a lot of work to produce a graphic where you cannot put a finger on a single thing.

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

TODO: More examples with my favorite work


Computational Form Examples
---------------------------

These are just a few examples of use of form in computational graphic art. 

	Show Eno Henze, p. 60 in GG
	Show code that creates something like it
	
Roman Verostko	

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/form/verostko3.jpg" />

TODO: More examples, maybe new tendencies?
	

Conclusion
----------

Arsenal of expressions with simple forms:
http://www.fredgriffinart.com/GRAPHICDESIGN/design.htm

-> assignment