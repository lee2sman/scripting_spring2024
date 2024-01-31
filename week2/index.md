## Today's plan
* Workshop: 'classless' drop-in stylesheets
  * plus customizations
  * Quickstart: Create a stylesheet for Week 2 class notes
* Important: File paths
* Purchase web server space
* Positioning things with CSS Flexbox

## CSS frameworks

A CSS framework is a library of CSS you can use to more rapidly create a website based on standards. They are often built with good defaults, are generally mobile-responsive, and are focused around clear UI patterns. The most famous is CSS Bootstrap. 

Some frameworks specialize in customizability. Others are drop-in. Most require CSS knowledge to be able to tailor the framework to match your site design goals and your individual assets of photos, text and other content.

PROs:

* Great design you can just 'drop-in'
* The little details are often thought-through and meticulously implemented
* cross-browser idiosyncracies have been worked out
* standardization makes it easier for a user to understand how to navigate your webpage

CONs:

* the design can look generic or overly product-y
* can be difficult to figure out how to customize
* may use design systems or code you have less or no previous experience in, such as CSS pre-processers 

### "Classless" frameworks

Classless CSS refers to a framework that does not require you to add css classes and ID's to your own HTML page and should work *out of the box* without customization. The upside is an instantly-readable website. The downside is that these sites can look generic and minimal.

* new.css - [demo](https://newcss.net/) - includes usage instructions
* Retro - [demo](https://markdowncss.github.io/retro/)
* Tufte CSS - [demo](https://edwardtufte.github.io/tufte-css/) and [code](https://github.com/edwardtufte/tufte-css) - *note this one requires you download a folder with fonts in it as well*

Huge list of classless css frameworks [here](https://github.com/dbohdan/classless-css). Or do an internet search.

**It is okay (and normal) to use multiple stylesheets! One semi-custom approach would be to use a classless framework, and then add your own stylesheet after to customize to your own style and needs.**

## Workshop: Creating a stylesheet for week 2

Create a stylesheet for these class notes. You can work solo or in a pair.

Your stylesheet should have styling for body, h1, h2, h3, img, p, code, and any other tags you wish to add.

Before you start, come up with a design plan.

## File System / File paths

File structure. File system. File paths. I know, you're yawning already. But if you understand the basics it will save you mistakes or problems later.

Here's the basics:

Your website must *sit* somewhere. You should build it in a folder, which we'll call a directory. When you are finished coding, you will upload it to a server. The name should avoid using spaces: it's better to use hypens ```-``` or underscores ```_```. (An example: ```fridge_photos```). The folder holding all of your files and sub-folders is called the *root directory*. In shorthand, this is written as ```/```, the forward slash.

Inside your root directory it is considered best practice to place an ```index.html``` file. Since the index file is a default, if someone visits your domain root (for example if you buy *fridgephotos.com*) then the browser will actually serve ```fridgephotos.com/index.html```, though it will just display ```fridgephotos.com```in the address bar.

In addition, you should have an external css page and javascript files here, if it's a simple site. For a more complex site, you may have a folder of css and a folder of javascript. You may also have a folder of images or other assets

![basic file structure example](../assets/week2/file_structure_example.png)  
Example basic file structure

With the above basic file structure your index.html could look like this:

```
<!DOCTYPE html>
<html>
  <head>
    <title>Fridge Photos</title>
    <link rel="stylesheet" type="text/css" href="style.css" >
  </head>
  <body>
    <h1>My photos</h1>
    <img src="images/photo1.jpg">
    <img src="images/photo2.jpg">
    <img src="images/photo3.jpg">
  </body>
</html>
```

### More advanced file structure (for bigger sites)

If you have a website with a number of pages, you may have tried adding more html pages to your root folder, with names like ```contact.html```, ```bio.html``` or even ```page2.html```. That is not considered best practice. The proper approach is make a separate directory inside your root directory for each page. And each of these will have their own index.html file. This way someone can visit ```fridgephotos.com/bio``` instead of ```fridgephotos.com/bio.html```.


View of the bio bio folder:

![Example file system for a larger site](../assets/week2/bio_subdirectory.png)  
The bio directory has its own index.html page


View of the ```js``` javascript file folder:

![Example file system for larger site showing js folder](../assets/week2/js_subdirectory.png)  
You may have multiple files in a js directory

#### Example

Based on the above file structure for a more advanced site.

Let's say we are editing the bio page. We will have a bio photo, and we need to use two scripts, jquery.js and our own main.js on the page.

Remember that starting with the forward slash means starting in our root folder. So the following file ```/bio/index.html``` means the index.html file we are working on is inside a bio folder which is inside our fridge_photos folder!

**/bio/index.html**:

```
<!DOCTYPE html>
  <html>
    <head>
      <title>My Fridge Bio</title>

      <script src="/js/jquery.js"></script>
      <script src="/js/main.js"></script>
    </head>
    <body>
      <h1>My bio</h1>
      <img src="/images/bio_photo.jpg">
    </body>
  </html>
```

For this page, we are loading the jquery.js file from the js folder located in the root directory since the file name in that line starts with ```/```.
The next line loads the main.js file in the same folder.

Check out the line of code with the image file above. A different way you could display the exact same image is:

```
<img src="../images/bio_photo.jpg">
```

This says to go up one folder (to the parent of the current folder holding the index.html file you are editing in the bio directory), then go in the images folder there and display the bio_photo.jpg image file.

### File structure cheatsheet

```
directory = a folder
. = current folder
.. = parent of current folder
/ = root directory

examples:
/images/photo1.jpg = photo1.jpg inside the images folder inside the root directory

../assets/head.jpg = the parent of this current folder has an assets folder in it with an image file head.jpg located inside that

```

## Purchase Web Server space

> Web space is a folder in your name that is mapped to a virtual Web server, and which is published on the Internet. You will need to create a file named index.html, and then you can view the file online at http://Students.Purchase.edu/YourFirst.YourLastName/ (not a real page, example only). Web Publishing is used in various classes, but you can also use it for any materials you want to publish on the Internet. Please note that the web pages you store here are accessible to the public, so do not post anything illegal, or anything which you do not own or have the rights to publish.


<a href="https://purchase.sharepoint.com/:u:/r/CTS/Knowledge%20Base%20External/File%20Space(Filezilla),%20Web%20Space(Web%20Page).aspx?csf=1&web=1&e=0jNFMN" alt="CTS Knowledgebase">CTS Knowledgebase with info on server space and FileZilla</a>

Download [FileZilla](https://filezilla-project.org/) **CLIENT**.

HOST name: students.purchase.edu   
FTPES – FTP over explicit TLS/SSL
Logon type: ‘Ask for password’ (or Normal)  
User: your campus username
Transfer settings: Passive

*Note: Back up your web server. Don't assume it will always be there! Servers crash and lose things.*

![FileZilla screenshot](../assets/week2/filezilla.png)

### Positioning things with CSS Flexbox


![flexbox intro](../assets/week2/flexbox.png)

HTML:

```
 <div class="flex-container">
  <div>ITEM1</div>
  <div>ITEM2</div>
  <div>ITEM3</div>
  <div>ITEM4</div>
</div> 
```

CSS: 

```
.flex-container {
  display: flex;
}
```

With flexbox, you can use these CSS selectors:

- flex-direction
- flex-wrap
- flex-flow
- justify-content
- align-items
- align-content

#### Flex direction

Change the direction your items flow. Instead of left to right (the default), let's flow down in a column. Just add ```flex-direction: column;``` to the css of the container.

```
.flex-container {
  display: flex;
  flex-direction: column;
}
```

![flex-direction](../assets/week2/flexdirection.png)

### Flex wrap

```
.flex-container {
  display: flex;
  flex-wrap: wrap;
}
```

alternatively: ``` flex-wrap: nowrap;```

![flex wrap](../assets/week2/flexwrap.png)

### Justify-content - For SPACING

Use this to align items

```
.flex-container {
  display: flex;
  justify-content: center;
}
```

![flexbox justify-content](../assets/week2/flexjustifycontent.png)

### Many Other ways to justify-content

```
 justify-content: center;
 justify-content: flex-start;
 justify-content: flex-end;
 justify-content: space-around;
 justify-content: space-between;
```

*align-items is used for aligning* items!

Play with these [here](https://www.w3schools.com/csS/css3_flexbox.asp)

## CSS Resources

- Definitive introduction: [Complete Guide to CSS Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- also good: CSS Flexbox [on w3schools](https://www.w3schools.com/csS/css3_flexbox.asp)
- [Flexbox Froggy](https://flexboxfroggy.com/)  
- [Flexbox Defense](http://www.flexboxdefense.com/) tower defense game

### Resources for Mobile-Responsive Design

* [Designing For The Best Experience For All Users](https://www.w3schools.com/Css/css_rwd_intro.asp)
* [CSS Media Queries](https://www.w3schools.com/Css/css_rwd_mediaqueries.asp)
* [Viewport Units](https://css-tricks.com/fun-viewport-units/)


# Homework

1. Continue work on your class homepage. See week 1 homework for more info.
2. Refine your personal site assigned from week 1 homework. Make improvements to the CSS. If you have previous web experience, **make your site mobile-responsive**. Upload your finished site to your student server space. Keep in mind file structure and URL structure. Your website should have a name that's easy to navigate, like http://faculty.purchase.edu/lee.tusman/personal-map


You will be evaluated by:

* Execution
  * Does the website work?
  * Is it uploaded to the college server space?
  * Is the code fully functional?
  * Does the URL and file structure make sense and is easy to navigate?
  * For those with previous classes in web design: Is it mobile-responsive?
* Concept 
  * Does the concept make sense?
  * Is it a novel idea? 
  * Is it a compelling design that suits the content?

