console.log("Running our extension!");

//grab the <article></article> section of the site we are looking at
let article = document.querySelector("article"); 
let text;

if (article){ //only run this section if there is an article section
   //grab the "article" tag section content
   text = article.textContent; 
} else { //otherwise, let's just grab all text, this is a hack
   article = document.body;
  text = document.body.innerText;
} 
   //create a regular expressions to find all the words
   let wordMatch = /[^\s]+/g; 

   //now use it on our article text
   let words = text.matchAll(wordMatch); 

   //how many words are there?
   let wordCount = [...words].length; 

   //let's say we can read 200 words per minute
   //divide total words by 200, then round it to get minutes
   let readingTime = Math.round(wordCount / 200); 

   //now we'll display the total reading time on the page
   //create an empty paragraph p tag
   let badge = document.createElement("p");

   //the text for that paragraph
   badge.textContent = "⏰: " + readingTime + " minute read";

   //grab our first h1
   let firstH1 = article.querySelector("h1");
   if (firstH1){
     firstH1.append(badge); //if there's an h1, put the time after that
   } else {
    let body = document.body; //otherwise, place it at the beginning of the body
    body.prepend(badge);
   }
