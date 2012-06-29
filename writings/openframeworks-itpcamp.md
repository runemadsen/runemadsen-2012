Introduction to OpenFrameworks
==============================

Overview
--------

* Processing > Java, OpenFrameworks > C++
* Why use OF?
	* It's faaaaaaaaaast
	* Computer Vision - OpenCV, Kinect
	* Video
	* [iPhone and iPad apps](http://www.openframeworks.cc/setup/iphone/)
* Why I use OpenFrameworks
	* Balloon Projections - because of video
	* I Used to Be Somebody - because of face tracking
	* Tile Puzzle - because of OpenCV blob tracking
	* Write Me - because of speed in drawings
	* Big Screens Titles - Because of heavy use of video
* This session is going to be mac-centric

Installation
------------

* [Download OF](http://www.openframeworks.cc/download/) - specific OS installation instructions is located on this page also

What is XCode?
--------------

* A look at the interface
* Compiling and targets
* OF folder organization (examples, addons, etc)

Looking at an Empty OF Project
------------------------------

* Difference between .h and .cpp file
* The setup, update and draw functions
* Going through the emptyExample class

Creating A New Project
----------------------

* Remember 2-folder nesting when copying empty example
* That weird thing when OF is the scheme instead of the app

The API
----------

* Show the [documentation page](http://www.openframeworks.cc/documentation/) vs. the Processing documentation page

### Drawing Shapes

	ofEllipse(x, y, width, height);
	ofRect(x, y, width, height);
	ofTriangle(x1, y1, x2, y2, x3, y3);

### Stroke and Fill

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
	
### Color

	ofSetColor(255, 0, 0);
	ofSetColor(255, 0, 0, 255);
	ofSetHexColor(0xFF0000);
	
### Making stuff move

* Use a global variable to make a shape move
* Then use mouse position to make shape move

### Drawing Fonts

* Go through grabbing a font from your font folder

	// setup
	ofTrueTypeFont verdana;
	verdana.loadFont("verdana.ttf", 14, true, true);
	verdana.setLineHeight(18.0f);
	verdana.setLetterSpacing(1.037);
	
	// draw
	ofSetColor(245, 58, 135);
	verdana.drawString("Hello There", 100, 100);

### Drawing Images

* Go through data folder

	// header
	ofImage myImage;
	
	// setup
	myImage.loadImage("myimage.jpg");
	
	// draw
	ofSetColor(255);
	myImage.draw(0, 0);
	
### Drawing Images with Alpha Channel (usually PNG-24)

	ofEnableAlphaBlending();
	// draw image
	ofDisableAlphaBlending();

### Rotation

	// wrong, rotates around 0,0
	ofRotate(45);
	ofSetColor(255, 0, 0);
	ofFill();
	ofRect(200, 200, 100, 100);
	
	// right, rotates around 200,200
	ofTranslate(200, 200);
	ofRotate(45);
	ofSetColor(255, 0, 0);
	ofFill();
	ofRect(0, 0, 100, 100);
	
### pushMatrix and popMatrix

	ofPushMatrix();
	ofTranslate(200, 200);
	ofRotate(45);
	ofSetColor(255, 0, 0);
	ofFill();
	ofRect(0, 0, 100, 100);
	ofRect(110, 110, 100, 100);
	ofPopMatrix();

	ofRect(0, 0, 100, 100);

### BeginShape and EndShape

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


### Smoothing

	ofSetColor(255, 0, 0);
	ofEnableSmoothing();
	
	ofFill();
	ofEllipse(500, 500, 100, 100);
	ofNoFill();
	ofEllipse(500, 500, 100, 100);
	
	ofDisableSmoothing();

### Playing Video

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

### Capturing Video

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
	
	### Events

		void testApp::keyPressed  (int key){ 
			sprintf(eventString, "keyPressed = (%i)", key);
		}

		//--------------------------------------------------------------
		void testApp::keyReleased(int key){ 
			sprintf(eventString, "keyReleased = (%i)", key);	
		}

		//--------------------------------------------------------------
		void testApp::mouseMoved(int x, int y ){
			sprintf(eventString, "mouseMoved = (%i,%i)", x, y);
		}

		//--------------------------------------------------------------
		void testApp::mouseDragged(int x, int y, int button){
			sprintf(eventString, "mouseDragged = (%i,%i - button %i)", x, y, button);
		}

		//--------------------------------------------------------------
		void testApp::mousePressed(int x, int y, int button){
			sprintf(eventString, "mousePressed = (%i,%i - button %i)", x, y, button);
		}

		//--------------------------------------------------------------
		void testApp::mouseReleased(int x, int y, int button){
			sprintf(eventString, "mouseReleased = (%i,%i - button %i)", x, y, button);
		}

		//--------------------------------------------------------------
		void testApp::windowResized(int w, int h){
			sprintf(eventString, "resized = (%i,%i)", w, h);
		}

		//--------------------------------------------------------------
		void testApp::gotMessage(ofMessage msg){
			sprintf(eventString, "gotMessage %s ", msg.message.c_str());
		}

		//--------------------------------------------------------------
		void testApp::dragEvent(ofDragInfo dragInfo){ 
			sprintf(eventString, "%i files dragged into the window at (%i, %i)", (int)dragInfo.files.size(), (int)dragInfo.position.x, (int)dragInfo.position.y);
		}
		
### Pixel Manipulation

	// getting the ofColors from an image,
	// using the brightness to draw circles
	int w = myImage.getWidth();
	int h = myImage.getHeight();
	float diameter = 10;
	ofSetColor(255, 0, 0);
	for(int y = 0; y < h; y++) {
		for(int x = 0; x < w; x++) {
			ofColor cur = myImage.getColor(x, y);
			float size = 1 - (cur.getBrightness() / 255);
			ofCircle(x * diameter, 500 + y * diameter, 1 + size * diameter / 2);
		}
	}

	// same as above, but this time
	// use the raw data directly with getPixels()
	unsigned char* pixels = myImage.getPixels();
	ofSetColor(0, 0, 255);
	for(int y = 0; y < h; y++) {
		for(int x = 0; x < w; x++) {
			int index = y * w + x;
			unsigned char cur = pixels[index];
			float size = 1 - ((float) cur / 255);
			ofCircle(200 + x * diameter, 500 + y * diameter, 1 + size * diameter / 2);
		}
	}

	
### Inverting the Captured Video

* Go through pointers and the whole shebang!

	// add to header
	unsigned char * videoInverted;
	ofTexture videoTexture;
	
	// setup
	videoInverted = new unsigned char[camWidth*camHeight*3];
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
	
More Stuff
----------

* Show examples folder

Installing Addons
-----------------

* Show [ofxaddons.com](http://www.ofxaddons.com)
* Show cool addons

Tomorrow
--------

... There will be another session 4-6pm