Introduction to OpenFrameworks
==============================

Overview
--------

* Why use OF?
* Why I use OpenFrameworks - show balloons, mac, tilepuzzle, writeme
* Java vs. C++

Installation
------------

* [Download OF](http://www.openframeworks.cc/download/) - specific OS installation instructions is located on this page also

What is XCode?
--------------

* A look at the interface
* Compiling and targets

Basic C++ Syntax
----------------

* Difference between .h and .cpp files
* A class in C++
* Pointers (maybe punt on it for now)

Examples
--------

* Show some cool examples

Creating A New Project
----------------------

* Remember 2-folder nesting when copying empty example
* That weird thing when OF is the scheme instead of the app

The OF API
----------

* Show the [documentation page](http://www.openframeworks.cc/documentation/) vs. the Processing documentation page

=== Drawing Shapes

	ofEllipse(x, y, width, height);
	ofRect(x, y, width, height);
	ofTriangle(x1, y1, x2, y2, x3, y3);
	
	

=== Stroke and Fill

	// draw something with a fill and no stroke
	ofFill();
	ofRect(x, y, w, h);
	
	// draw something with a stroke and no fill
	ofNoFill();
	ofRect(x, y, w, h);
	
	// draw something with a stroke and a fill (yes, this is how you do it)
	ofFill();
	ofRect(x, y, w, h);
	ofNoFill();
	ofRect(x, y, w, h);
	
=== BeginShape and EndShape

	ofSetHexColor(0xe0be21);

	// weird star 
	ofSetPolyMode(OF_POLY_WINDING_ODD);	// this is the normal mode
	ofBeginShape();
		ofVertex(200,135);
		ofVertex(15,135);
		ofVertex(165,25);
		ofVertex(105,200);
		ofVertex(50,25);
	ofEndShape();
	
	// cool star 
	ofSetHexColor(0xb5de10);
	ofSetPolyMode(OF_POLY_WINDING_NONZERO);
	ofBeginShape();
		ofVertex(400,135);
		ofVertex(215,135);
		ofVertex(365,25);
		ofVertex(305,200);
		ofVertex(250,25);
	ofEndShape();
	
=== Color

	ofSetColor(255, 0, 0);
	ofSetColor(255, 0, 0, 255);
	ofSetHexColor(0xFF0000);

=== Drawing Fonts

	// setup
	ofTrueTypeFont verdana;
	verdana.loadFont("verdana.ttf", 14, true, true);
	verdana.setLineHeight(18.0f);
	verdana.setLetterSpacing(1.037);
	
	// draw
	ofSetColor(245, 58, 135);
	verdana.drawString("Hello There", 100, 100);

* Loading and displaying images
* Rotation, translation and pushMatrix, popMatrix (you have to translate to the point of origin)
* Keypress, mousepress and other presses

=== Smoothing

	ofSetColor(255, 0, 0);
	ofEnableSmoothing();
	
	ofFill();
	ofEllipse(500, 500, 100, 100);
	ofNoFill();
	ofEllipse(500, 500, 100, 100);
	
	ofDisableSmoothing();

=== Playing Video

	// header
	ofVideoPlayer fingerMovie;
	
	// setup
	fingerMovie.loadMovie("movies/fingers.mov");
	fingerMovie.play();
	
	// update
	fingerMovie.idleMovie();
	
	// draw
	ofSetHexColor(0xFFFFFF);
	fingerMovie.draw(20,20);

=== Capturing Video

  // header
	int camWidth;
	int camHeight;
	ofVideoGrabber vidGrabber;
	
	// setup
	camWidth = 320;
	camHeight = 240;
	vidGrabber.setVerbose(true);
	vidGrabber.initGrabber(camWidth,camHeight);
	
	// update
	ofBackground(100,100,100);
	vidGrabber.grabFrame();
	ofSetHexColor(0xffffff);
	vidGrabber.draw(20,20);
	
=== Inverting the Captured Video

	// add to header
	unsigned char * 	videoInverted;
	ofTexture			videoTexture;
	
	// setup
	videoInverted 	= new unsigned char[camWidth*camHeight*3];
	videoTexture.allocate(camWidth,camHeight, GL_RGB);
	
	// update
	if (vidGrabber.isFrameNew()){
		int totalPixels = camWidth*camHeight*3;
		unsigned char * pixels = vidGrabber.getPixels();
		for (int i = 0; i < totalPixels; i++){
			videoInverted[i] = 255 - pixels[i];
		}
		videoTexture.loadData(videoInverted, camWidth,camHeight, GL_RGB);
	}
	
	// draw
	videoTexture.draw(20+camWidth,20,camWidth,camHeight);

Installing Addons
-----------------

* Show [ofxaddons.com](http://www.ofxaddons.com)
* Show cool addons

Tomorrow
--------

... There will be another session 4-6pm