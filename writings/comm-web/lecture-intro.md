6:30 Introduction
-----------------

Hey everyone. Welcome to comm lab web.

My name is Rune Madsen. I will introduce myself very soon, but first I'll speak a little bit about the class and what we're trying to achieve.

**This is a class about ...**

* Learning the fundamentals of the web
* The entire flow from the moment you enter something in the address bar until you get a response. All the mechanisms.
* Not so much a class about web design. You will learn CSS, but the goal is not to get lost in it.
* The bigger picture: Being able to create your own web services form the ground up.
* Today we'll talk about what that means

**Today**

* Introductions (me and you)
* a lot of me talking ...
* VERY IMPORTANT that you ask questions. Only 7 week class. I know how difficult it is.
* Laptops only for notes

**The technology in the class**

* Is it something we can use outside ITP? = YES. Ruby and Sinatra is used everywhere (nytimes)
* Ruby will probably be the most widely used programming language on the web in 5 years
* BONUS: Ruby and Datamapper in many ways makes your life easier if you've done PHP or (gosh) ASP before. It's a great intro to web programming


6:40 Introductions
------------------

**Me**

* Rune Madsen
* Interactive Developer
* I'm an ITP grad and recent ITP Resident
* Used to work for the NYTimes
* I currently teach a class called "Printing Code", work a O'Reilly and teach this class

**You**

Introduce yourselves. (write on board)

* Your name and background
* Experience with web and programming


6:55 What is the Internet
-------------------------

Today I'll try to answer this question:

* What is the internet? Any ideas?

The answer is:

* Just a bunch of computers talking to each other

How do they talk?

* a language called HTTP
* If I want this eraser from you, what do we need? (3 things)
    * a language
    * a request
    * a reponse
* That's how the internet works: request and reponse

**THE MAP**

Now I will walk you through what happens when you URL.

This is me ...

* User
* Client (browser)
* Network
* Server (render static or data store)
* Data Store
* Look, more clients! (Phone, Arduino)

Talk about where Ruby, Sinatra and Datamapper is.


7:15 HTTP Requests
------------------

* A client can make a request! (point to the map)
* A server can return a response (point to the map)

HTTP Requests are the backbone of everything that happens on the web. There are 4 types of requests:

* GET
* POST
* PUT
* DELETE

Each of these request tell the server what you want to do.

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


7:30 HTTP Responses
-------------------

So what comes after a request? Hopefully a response from the server. (point to the map)

* Can be a good or bad response = status
* Open webinspector: http://itp.nyu.edu/~rsm347/sinatra/html_form
* Headers
* Body

You can do this from any client!

* curl -X GET "http://itp.nyu.edu/~rsm347/sinatra/html_form" -v

It's all about requests and responses: That's what the internet is. A bunch of computers talking via HTTP requests.

Any questions?


7:45 HTTP Response Body: HTML
-----------------------------

The thing of most importance to us is in the body of the response.

* a lot of text
* but we can't just put in text. How do we know what is an image or text or paragraph?
* Show Moby Dick example:
	* We cannot just return the text. How would the browser know what is what?
	* wrap in <something> tags
* A markup language: Is the things we put around text to tell the client what the text is?
* Show runemadsen.com reponse instead of "hello"
* After the break we'll dive into HTML
		
		
8:00 Break
----------

8:10 Dive into HTML
-------------------

**HTML**

* text with <> no front and back
* nested tags
* The different tags
    * `<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>`
		
You browser will take this HTML and make a website

* It happens on the client!
* Show nytimes.com with my heading

**Iterate:**

* a full GET request with HTML response


8:30 Giving the Server Parameters via a FORM
--------------------------------------------

One of the ways we can tell the server what to give back is by using a FORM

* Why is this important? If not, everything would be static
* introduction to `<form>`
* introduction to `<input>` - they have different types. This time to mark up what we are sending.
* [Simple Form Example](https://gist.github.com/3557042)
* [All Fields Form Example](https://gist.github.com/3557043)


8:45 Making the Server Respond to the Parameters
------------------------------------------------

You should all have a sinatra folder and an app that is ready to listen to your forms

You don't need to understand everything. NEXT WEEK!

Your Sinatra folder setup

* [Simple HTML form example with POST to Sinatra route](https://gist.github.com/3557046)


Homework Assignment
-------------------

* Create a HTML file with a form in /public. The form should allow someone to input a recipe, with fields for the title of the recipe, checkboxes for ingredients, or radio buttons to choose the difficulty level. Then, in your app.rb, use the post params to show the values entered in the form inputs. Look at the possible input types exemplified in all_fields.html for an example of inputs. 


Software We'll Use In This Class
--------------------------------

* Introduce Komodo
* Introduce CyberDuck
