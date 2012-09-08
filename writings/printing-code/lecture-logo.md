1. How do we design something that identifies a certain object, person or group?
2. Can we use code to create dynamic identities


It's hard to show specific techniques for how to do dynamic logos - so I took a bunch of them and recreated in Processing.

Important: It starts with an idea. Then an implementation. Like John Cage said: "Do not try to create and analyze at the same time. They are different processes".


What is a Logo?
---------------

Show all the Paul Rand logos



What to think about when designing logos
----------------------------------------


Organic Logos
-------------

The difficult thing when creating generative logos is setting up constraints to make the logo look good - but different - on every run. This can be hard.

Let's go through these and talk about how we might create them in Processing.


Here's a dynamic identity Stefan Sagmeister made for the Seed Media Group, based on the phyllotaxis algorithm.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/seed5.jpg" />

Here's a dynamic identity made for the small film studio "Lava Films". It's based on the concept of natural disasters: Things moving to non-anticipated places. So is the font.

<iframe src="http://player.vimeo.com/video/23500126?title=0&amp;byline=0&amp;portrait=0" width="600" height="338" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/lava5.jpg" />

Here's an organic identity for ITI, which is basically just multiple variations of an unfolded box (hello Sol Lewitt!).

<iframe src="http://player.vimeo.com/video/32502124?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="600" height="375" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/iti_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/iti.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/iti2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/iti2.jpg" />

Identity for the city of Melbourne. All variations are built around the points of the 3D structure. Constraints and variation!

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/melbourne4.jpg" />

Here's [even](http://superserious.net/work18.html), [more](http://www.underconsideration.com/brandnew/archives/monospace_theatre.php) projects.



A Few Techniques for Organic Logos
----------------------------------

sin & cos - distributing stuff around the edge of a circle

for loops





Case: Security Forum
--------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security4.jpg" />

This logo is extremely easy to recreate, however it provides us a good reason to talk about sin() and cos().

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/security_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/logo/security)

Again, we would probably need to implement some constraints, so the same dot is not chosen over and over, and to provide spacing between the lines.



Case: The MIT Logo
------------------

<iframe src="http://player.vimeo.com/video/20250134?title=0&amp;byline=0&amp;portrait=0" width="600" height="339" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

Each person at MIT can get his own logo. 40,000 permutations.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit5.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit8_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit8.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit6.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit7_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit7.jpg" />

Here's a Processing sketch that recreates the basic output of the MIT logo. A lot of the fine-tuning is left out, but it should give you an idea.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/mit_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/logo/mit)


Case: Casa de Musica
--------------------

<iframe width="600" height="338" src="http://www.youtube.com/embed/URmKSyKAK5w" frameborder="0" allowfullscreen></iframe>

Based on the building.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica5.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica6.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica7_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica7.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica8_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica8.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica9_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica9.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica10_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica10.jpg" />

Here's an example of how to approach this kind of logo in Processing:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/logo/musica_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code-2012/tree/master/class_code/logo/musica)

What you'll see is that whenever you code something generative, the designer in you has to establish some kind of constraints in the code. Here the colors cannot be too similar to the background, nor should they be too similar inside the logo. Working in HSB would make it possible for you to handle the brightness if too big, small, etc.


Case: Sun Effects
-----------------

http://rulesbased.wordpress.com/2010/02/03/sun-effects/#more-132



Blogs, etc
----------

* http://www.underconsideration.com/brandnew/
* http://rulesbased.wordpress.com