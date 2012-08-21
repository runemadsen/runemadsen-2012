What is a grid system?
----------------------

There is nothing worse for an artist than a blank canvas. A grid system is a specified group of measurements a graphic designer can use to align and size objects within the given format. Although there are a few different categories of grid systems, there are no strict rules on what can or cannot be a grid. It's up to you. Any guides that help you shape the final design is okay.

Relevant for us is how the grid is such a strict mathematical concept. It's perfect for manipulation in code. The traditional way of creating a grid is by doing it by hand in Photoshop or Illustrator. If you suddenly notice that you want a slimmer grid, you need to re-create the grid and move everything by hand. In code this is not the case, a we can be extremely flexible and try many iterations within minutes. It also allows us to use several grid systems on top of each other, distort the grid system by rotating or scaling it, or generating the grid modules randomly. 

The concept of a generative grid system is extremely powerful, but also extremely underused. Even a simple thing like a flexible grid program is non-existent today. 

Today we'll go through the different types of grid systems, look at interesting examples, and look at how we can create and manipulate grid systems in code. If you feel like it, read [this brief introduction to the history of grid](http://www.graphics.com/modules.php?name=Sections&op=viewarticle&artid=620).


Types of Grids
--------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript.jpg" />

A **manuscript grid** is the most basic form of a grid. It is made up by a single rectangle that defines the margins of the format.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column.jpg" />

A **column grid** is what it says. It splits the page into columns, and is probably the most used grid type. Libraries like blueprint and 960.gs have ported the ideas of the column grid to the web. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular.jpg" />

The **modular grid** is a column and row grid that not only tells you the x-placements of your forms, but also guides on the y-axis.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_hierarchical_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_hierarchical.jpg" />

The last type of grid is often called a **hierarchical grid**, although it's kind of a "catch all" for grids that do not fit into the above categories. A hierarchical grid is described by not having equal spacing between modules.


Using a Grid
------------

Even a simple grid gives you a lot of variety in placing your content. You use the modules as basis for larger content areas. This creates alignment and balance in your design.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2.jpg" />


Coding a Grid
-------------

Before we start diving into grid systems in code:

- floats vs. ints
- height of grid should be your line-height of body text (if you have any)


Coding a Manuscript Grid
------------------------
Examples

The simplest possible grid to make is a manuscript grid that only requires 4 variables: x,y,width,height to define the rectangle in which we place content.

[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/grid/manuscript_grid_no_class)

A nice way of encapsulating these 4 variables is by creating a class that can keep track of them and hide them from the main file. He I've created a _Column_ class to hold the column values. Nothing else changed. By extracting the grid code into a class we can add convenient helper methods to that class without cluttering out main source file.

Very simple Processing Code


Coding a Column Grid
--------------------

* Everything needs to be floats, otherwise the columns won't line up (show example)

Examples
Show simple column grid processing program
Show generative placement column grid processing program
MAKE generative column widths grid processing program


Coding a Modular Grid
---------------------
Examples
Processing Code

THE BIG PROBLEM IS OVERLAPPING. WE DON'T KNOW YET HOW TO GENERATE A RANDOM SET OF DIVIDED RECTANGLES.

-> Dividing rectangles and all the other text


Coding a Hierarchical Grid
--------------------------
Examples
Processing Code


Karl Gerstner's Flexible Grid
-----------------------------

Talk about gerstners [flexible grid](http://www.aisleone.net/2010/design/celebrating-karl-gerstner/) from “designing programmes”


Grid Deconstructions THIS SHOULD BE THE MOST PART OF THE CLASS
--------------------

SHOW EXAMPLES!!!!

THEN SPIN OUT OF CONTROL
	
	Show code that uses 2 grid systems on top of each other (generate 2 grid objects with random values and place stuff)

It's all about measurements
Show sketch that has a very simple 2x3 grid system
Show sketch that has spacing between the grids
> They should all use simple getPosition() functions

Make a grid where the columns randomly wary in width (but based on rules). apply content into them.



THINGS I MUST USE

http://www.smashingmagazine.com/2009/07/17/lessons-from-swiss-style-graphic-design/

Use DE p. 207: Write a Processing sketch that generates that type constellations.

Use grid system text from Form and Code, p. 101.
Talk about grids in polar coordinate systems. Use GG polar coordinate converter. What is a grid in polar coordinates?

Use Rand lecture book p. 27 illustration and write a sketch that does this with masks.

http://www.graphics.com/modules.php?name=Sections&op=viewarticle&artid=620