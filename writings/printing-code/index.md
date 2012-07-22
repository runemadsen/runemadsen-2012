<a name="course-description"></a>

Printing Code 2012
==================

**Dislaimer: These pages are slides and notes for my lectures for this class. They are not by any means edited for clarity or proofread for mistakes.**

**Printing Code** is a graduate course taught at the Interactive Telecommunications Program during the fall 2012 semester. In this course students explore the use of computational techniques to produce physical prints, focusing on the intersection between graphic design and code. Class time will be divided between exploring design topics like colors, grids and typefaces, and applying these towards computational topics like randomization, repetition and generative form.

Weekly readings include relevant writings from the history of graphic design ([Josef Muller-Brockmann](http://bit.ly/KR2jkA), [Paul Rand](http://bit.ly/KzNyhy)), articles from the history of computation ([Vannevar Bush](http://bit.ly/9Zat9h), [Douglas Englebart](http://bit.ly/B4HDX)) and everything in between ([Sol Lewitt](http://bit.ly/BX1iy), [Edward Tufte](http://bit.ly/49i1Xj)).

Weekly homework can be produced using the digital printers at [NYU’s Advanced Media Studio](http://bit.ly/Krjjhh), however students are encouraged to utilize whatever physical printing techniques they prefer, that being stencils, letter press, silk screen, weaving or home-made printers.

The class aims not only to teach the students how to create physical prints via code, but also to have something interesting to say about it. The class requires ICM or similar programming background.

Teacher Info
------------

* Rune Skjoldborg Madsen
* rune@runemadsen.com
* [Office Hours Signup](https://www.google.com/calendar/selfsched?sstoken=UUZYRVhjenlybjZ6fGRlZmF1bHR8ZTlhNjZkZmUwMjU1MTRkNGI3NDQyYzBjMGZjNjNjZWM)

Introduction
------------

> It’s important to use your hands, this is what distinguishes you from a cow or a computer operator - Paul Rand

For many years graphic design education has been a separate field. You learn about color, grids, form, balance, typography, and books on the subject are geared towards individuals with visual creativity. The opposite can be said about the field of programming that for a long time has been geared towards technically skilled people. During the last decade this line has obviously blurred, but not to the degree you would expect. Companies still hire _designers_ or _developers_. Most web design is still made in Photoshop and then translated into code. I even know quite a few creative coders who act like scared children when asked to design something.

For someone who grew up as a part of the computer generation, this divide might seem problematic. If your first experiments with color and form was when you were also writing HTML and CSS for the first time, then how do you know where design stops and programming begins? Graphic design and programming are so intermingled today that a term like *Computational Design* seems like a much better explanation of the two merging fields. [Design is how it works](http://daringfireball.net/2012/02/walter_isaacson_steve_jobs), not just a last layer of make-up.

As I've grown more experienced as a graphic designer, it has become obvious that a great deal of this experience is built on a very systematic approach to design. Graphic design almost seems like algorithms controlled by a creative vision. Grids are just basic measurements. Typography is all about spacing and curves. Color schemes are basic math performed on the color spectrum. This class is about investigating what happens when we start creating graphic art only by writing code. It's an experiment in replacing already exiting tools (that too long has dictated the visual look of computational design - hello drop shadow) with our own software programs. We will investigate graphic design systems, distill them into algorithms, and eventually let them spin out of control.


Things To Keep In Mind
----------------------

**Printing Code** is a class where we will be working in the intersection between programming and graphic design. This means that you will need to bring both a desire to work hard on the programming assignments, and an interest in leading the in-class discussions around the weekly readings. Here’s a few things to keep in mind: 

* This is a class where we present both code and product, and during presentations you will have to account for the code that produced your visual. Hopefully this will teach you a ton about programming, make you write clean code, and keep the “copy / paste / tweak” mentality away.

* You will not need to have your laptops open in this class, as I will post slides and example code on this website after every class. If you do wish to take notes on your laptop, please let me know.

* _Design by committee_ is a terrible thing, and therefore most assignments will be individual. Groups are allowed during mid-terms and finals.

* That being said, you are encouraged to share paper and AMS reservations with at least one other person. The print reservations at AMS fill up quickly, and it's much better to go in groups of 2 or 3 people.

* Please participate. I will try to give my honest opinion, and you should try your best to give me yours. This also means actually doing the readings.

* In this class I highly encourage you to take on the role as an artist and independent thinker. You will need to find a delicate balance between thought and tool. Building your own tools is great (and highly encouraged), but please don't surrender to technology just because you can. You are in control, and your thought processes should guide your designs.

Inspirational Reading
---------------------

These books might come in handy before, during or after the semester. You will not need to purchase these, but all of them are highly recommended reading.

* [Generative Design: Visualize, Program, and Create with Processing](http://amzn.to/Numea0) is one of the few recent books about algorithmic graphic art. It's pricey but really worth the money.
* [Creative Code by John Maeda](http://amzn.to/KspHn9)
* [Hackers and Painters by Paul Graham](http://amzn.to/AdZl6) is a great collection of essays revolving around the concept of the programmer as an artist. Many of the essays are available [on this website](http://bit.ly/1vUe)
* [Design by Numbers by John Maeda](http://bit.ly/MemEdj)
* [Designing Programmes by Karl Gerstner](http://amzn.to/K97iqQ)
* [Design, Form and Chaos by Paul Rand](http://bit.ly/KIgUdr)
* [A Designer's Art by Paul Rand](http://bit.ly/Lbq1Gl)
* [Type + Code by Yeohyun Ahn](http://bit.ly/NEFjFk) is a book from 2012 aiming to introduce Processing to designers.
* [Form + Code by Casey Reas, etc](http://formandcode.com/)
* [Dot Dot Dot Magazine](http://www.dot-dot-dot.us/)
* [Bulletins of the Serving Library](http://www.servinglibrary.org/)
* [Elements of Typographic Style by Robert Bringhurst](http://amzn.to/17cWk9)
* [The Interaction of Color by Josef Albers](http://amzn.to/NGs4R2)

*Before the first class*: Setup Git and clone down the repo.

Week 1: Hello World
-------------------

> "Beauty is a function, after all, of any relevant visual message. Just as prose can be dull and straight-forward or well edited and lyrical, so too can a utilitarian object be designed to be more than just simply what it is" (intro, design elements)

### Readings for this week

John Maeda - Design By Numbers, Chapter 1
Paul Graham - Hackers and Painters
Paul Rand: Something from Design, Form and Chaos
DDD4: CorporateIDMaker (ironic) - goes to the nerve of it: design can never be done by a program, but you can speak through code
First essay in Graphic Design History? - talk about how tied design is to technology, why not use computer?

### About the class

* Advertising vs. Graphic Arts
* Class [introduction](#introduction)
* Ultimately about forcing you to **think** about even the simplest forms of graphic communication
* These lectures are based on my way of approaching a task as a designer (first form, then color)
* Constraints in assignments in the beginning
* "Write the truest sentence you've ever written" - Hemingway. That's the aim. We could add "simplest" to that. That's why Paul Rand is great. You cannot change anything.
* [Things to keep in mind](#things-to-keep-in-mind)
* Syllabus walk-through

### Introductions

* About me
* Let's go around the table. Who are you? Why did you take the class? What do you expect to learn (Programming? Design? Both?)? Rate your programming and design experience.

### Reading discussion

* Why are these important to the class?
Hackers and Painters:
Touch on the idea of “programming as you go”. [Embrace failure](https://twitter.com/#!/runemadsen/status/192300820727996416/photo/1), but THINK!
Did you understand his idea of static typing? (We are using Java, a static typed language)
What did it mean to you what he said about learning by reading source code? (this is what we will do in this class)
Talk about DaVinci painting leaves: Relentlessness!

### [The History of Graphic Design and Computational Form](/printing-code-2012/lecture-intro)

### Using Processing to create graphic prints

* How to use the Processing framework
* Preparing for print (borders, color profile, etc)
* Handing in assignments with Git

### Assignment for next week

Could be something about using only one variable... etc. Print on the schools laser printer.


Week 2: Form
------------

CLASS DESCRIPTION

### Readings for this week

### Reading Discussion

### Assignments Discussions

### [Computational Form and Space](/printing-code-2012/lecture-form)

### Short trip to AMS

### Assignment for next week

Using the [Processing framework](#link-to-github-repo) I showed in class, write code that outputs 3 different shapes aligned from top to bottom: POSSIBLE: Wet, sharp, chaos, beauty, thunder. Use only black and white. Print on a poster at AMS and bring to class for design critique. MAYBE USE ONLY FOR LOOPS, IN ORDER TO MAKE THEM DO GENERATIVE.


Week 3: Color
-------------

CLASS DESCRIPTION

### Assignment for next week
Color assignment

Week 4: Typography
------------------

CLASS DESCRIPTION

### Assignment for next week
Typography assignment

Week 5: Grids
-------------

CLASS DESCRIPTION

### Assignment for next week
Grids assignment

Week 6: Logo
------------

CLASS DESCRIPTION

### Assignment for next week
Logo assignment will be the midterm, and they have 1 week to do it.

Week 7: _Midterm Presentations_
-----------------------------

CLASS DESCRIPTION

Week 8: Transformation
----------------------

CLASS DESCRIPTION

Week 9: Repetition (Patterns)
------------------

CLASS DESCRIPTION

Week 10: Randomization
----------------------

CLASS DESCRIPTION

Start finals

Week 11: Motion
---------------

CLASS DESCRIPTION

Week 12: 3D
-----------

CLASS DESCRIPTION

Week 13: _Final Presentations 1_
------------------------------

CLASS DESCRIPTION

Week 14: _Final Presentations 2_
------------------------------

CLASS DESCRIPTION



