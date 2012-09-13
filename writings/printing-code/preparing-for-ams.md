Preparing Images For Printing At AMS
====================================

Now that you know how to export huge images from Processing, how do we prepare the image for print at AMS? It's a simple process, but it's important to do it right. These are the steps we need to take:

* Picking the paper
* Save as TIFF
* Convert to Adobe RGB (1998)


Picking the Paper
-----------------

Before you start coding, you need to figure out what kind of paper you want to print on. We have 2 types os paper:

### Ultrasmooth Fine Art

This is the **matte** paper, and you have to use the "Mac Print MK" printer for it. If the printer is booked you can also book the "Mac Print 4900" printer, but it will need some resetting. The paper is a rough, non-shiny type, and it works really well for graphic prints.

This paper is 17" wide, which means that your final image needs to be 5100 pixels wide. You basically determine the height, as it's a full roll of paper. Don't use too much though. Often you want the height to be less than 22", maybe even square.

We have 2 rolls of this paper.

### Photo Paper: Premium Semimatte Photo Paper

This is the **photo** paper, and you have to use the "Mac Print A" or "Mac Print B" printers for it. The paper is not glossy, but looks more like photo paper.

This paper is 16" wide, which means that your final image needs to be 4800 pixels wide. Again, you determine the height.

We have 1 roll of this paper. Both of these rolls are in the ER with "MATTE" and "PHOTO" written on the boxes.


Save as TIFF
------------

Instead of saving a PNG or JPG from Processing, you will need to save it in the TIFF format. The save function has to look something like this:

	canvas.save("grab.tiff");
	
Processing will save a TIFF image in the sRGB color mode. We will need to convert this into the Adobe RGB (1998) color mode.


Convert to Adobe RGB (1998)
---------------------------

To convert your image into Adobe RGB (1998) color mode, create a new image in Photoshop with your final print dimensions in 300dpi. This is an example of a photoshop file for the matte paper. Notice how the color mode says "sRGB".

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/other/photoshop1.jpg" />

Now open your TIFF image created in Processing, and copy/paste it into the new window. You do this by going to "Select > All", and pressing "CMD+C" and "CMD+V" like a normal copy operation.

Now we need to convert the color profile. Choose "Edit > Convert to Profile", and choose the Adobe RGB (1998) color profile. Press "OK".

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/other/photoshop2.jpg" />

Now save your Photoshop image in the TIFF format. You now have a file ready to print at AMS!