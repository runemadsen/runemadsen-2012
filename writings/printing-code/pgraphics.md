Normally in Processing you draw stuff directly to the screen, and then you can use saveFrame() to save a picture of whatever is on the screen. Something like this:

	void draw()
	{
	  size(500, 500);
	  rect(0, 0, 50, 50);
	  saveFrame("grab.png");
	}

However, now that you want to create a high-resolution image, how are you going to see what's on the screen? If you run your program like this, you'll only see a tiny corner of the giant picture, because a size of 2550x3300 is way bigger than your computer screen:

	// dont' do this
	void draw()
	{
	  size(2550, 3300);
	  rect(0, 0, 50, 50);
	  saveFrame("grab.png");
	}

To circumvent this, Processing has something called a PGraphics object that is "another" screen. You can draw stuff into this screen by calling all the drawing methods on this object instead:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  saveFrame("grab.png");
	}

That fixed our problem with having too big a window. But if you run this code, the window will be blank. It's blank because we're drawing everything into another screen - the PGraphics object. Luckily we can draw whatever is in the PGraphics object on the screen with the image() function. And the really cool thing is that we can pass a width and a height to the image function to scale the giant PGraphics object to our screen:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  image(canvas, canvas.width * 0.2, canvas.height * 0.2);
	  saveFrame("grab.png");
	}

Almost there. This scales our giant drawing to the main window. Great. But if you look at the image we're saving, it's an image of our small main window, not the high-res PGraphics drawing. Instead, we need to call save() on the PGraphics object to save the high-res drawing:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  image(canvas, canvas.width * 0.2, canvas.height * 0.2);
	  canvas.save("grab.png");
	}

And that's it. We can talk more about it in the class.