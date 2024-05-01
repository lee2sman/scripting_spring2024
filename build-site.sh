#!/usr/bin/env fish

set titles "Week 1 - HTML and CSS" "Week 2 - CSS Frameworks + Working with a Server" "Week 3 - Intro to Javascript and the DOM" "Week 4 - Intro to Scripting with jQuery" "Week 5 - Bookmarklets and Extensions" "Week 6 - JSON and Custom Extensions" "Week 7 - Working with the Date API" "Week 8 - An introduction to Node" "Week 9 - Building a chat application with Node.js libraries" "Week 10 - Working with APIs" "Week 11 - Audio API" "Week 12 - Working with data on the server" "Week 13 - Persistence with localStorage" "Week 14 - Node.js File Systems Module"

# build syllabus
echo "Building syllabus"
./syllabus/build.sh

#could replace max number with an $argv ? or test for folders
echo "Building pages"
for i in (seq 1 (count $titles))
  echo "building week$i"
  #./week$i/build.sh
  pandoc -s ./week$i/index.md -o ./week$i/index.html --metadata title=$titles[$i] -B ./_includes/header.html --css=../assets/classless.css --css=../assets/main.css

  echo -e "[$titles[$i]](week$i/)\n">>index.md

end

echo "Building home"

#building the home page
pandoc -s index.md -o index.html -B ./_includes/header.html --css=./assets/classless.css --css=./assets/main.css
