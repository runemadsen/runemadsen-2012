Introduction
------------

Hey everyone. Welcome to comm lab web.

My name is Rune Madsen. I will introduce myself very soon, but first I'll speak a little bit about the class and what we're trying to achieve.

**This is a class about ...**

* Learning the fundamentals of the web
* The entire flow from the moment you enter something in the address bar until you get a response. All the mechanisms.
* Not so much a class about web design. You will learn CSS, but the goal is not to get lost in it.
* The bigger picture: Being able to create your own web services form the ground up.
* Today we'll talk about what that means

**The technology in the class**

* Is it something we can use outside ITP? = YES. Ruby and Sinatra is used everywhere (nytimes)
* Ruby will probably be the most widely used programming language on the web in 5 years
* It's a great intro to web programming
* BONUS: Ruby and Datamapper in many ways makes your life easier if you've done PHP or (gosh) ASP before

**Today**

* Introductions (me and you)
* a lot of me talking about the internet
* VERY IMPORTANT that you ask questions. You are not the only one, and nothing is embarrassing.
* Laptops only for notes


Introductions
-------------

**Me**

* Rune Madsen
* Interactive Developer, which means that I do everything related to graphic design and programming
* I'm an ITP grad and recent ITP Resident
* Used to work for the NYTimes
* I currently teach a class called "Printing Code", work a O'Reilly and teach this class

**You**

Why don't we go around the room so you can introduce yourselves. (write on board)

* Your name and background
* Experience with web and programming
* How scared you are from a scale from 1-10


Software We'll Use In This Class
--------------------------------

* Introduce Komodo
* Introduce CyberDuck


What is the Internet
--------------------

**ASK:**

* What is the internet?
* == Just a bunch of computers talking to each other

Show the map. Don't go into details about what is sent or how it works.

**THE MAP**

* User
* Client (browser)
* Network
* Server (render static or data store)
* Data Store
* Look, more clients! (Phone, Arduino)


HTTP Requests
-------------

HTTP Requests are the backbone of everything that happens on the web. There are 4 types of requests:

* GET
* POST
* PUT
* DELETE

Let's look at the most used GET.

**GET Request**

* Means that you want to get something
* Do request/response example with whiteboard marker

**POST Request**

* Means that you want to save something
* Whiteboard example in the same way, just the other way around

**PUT Request**

* Means that you want to update something
* Whiteboard example

**DELETE Request**

* Means that you want to delete something
* whiteboard example


HTTP Responses
--------------

We talked so much about requests, but what about responses?

* Open webinspector: http://itp.nyu.edu/~rsm347/sinatra/html_form
* Status
* Headers
* Body

You can do this from any client!

* curl -X GET "http://itp.nyu.edu/~rsm347/sinatra/html_form" -v

It's all about requests and responses: That's what the internet is. A bunch of computers talking via HTTP requests.

Any questions?


HTTP Response Body: HTML
------------------------

The thing we return in the body of the response.

* Show runemadsen.com reponse instead of "hello"
* A markup language: Is the things we put around text to tell the client what the text is.
* Show Moby Dick example:
	* We cannot just return the text. How would the browser know what is what?
	* wrap in <something> tags

**HTML**
* text with <> no front and back
* nested tags
* The different tags
	* <html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>
		
You browser will take this HTML and make a website

* It happens on the client!
* Show nytimes.com with my heading

**Iterate:**

* a full GET request with HTML response


Introduce <form> and <input> types
Simple Form Example
All Fields Form Example
Dynamic HTML with Sinatra and HTML form


Your Sinatra folder
Simple Sinatra script
Simple HTML form example with POST to Sinatra route
Homework Assignment


Create a HTML file with a form in /public. The form should allow someone to input a recipe, with fields for the title of the recipe, checkboxes for ingredients, or radio buttons to choose the difficulty level. Then, in your app.rb, use the post params to show the values entered in the form inputs. Look at the possible input types exemplified in all_fields.html for an example of inputs. 
