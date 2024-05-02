#!/usr/bin/env fish

#check if jq installed
if not type -q jq
  echo "jq required. please install."
  exit
end

set weeks 14

# build syllabus
echo "Building syllabus"
./syllabus/build.sh

# (re-)creating home page
echo "Building home"
cat ./_includes/home.md>index.md

#could replace max number with an $argv ? or test for folders
echo "Building pages"
for i in (seq 1 $weeks)
  echo "building week$i"
  pandoc -s ./week$i/index.md -o ./week$i/index.html -B ./_includes/header.html --css=../assets/classless.css --css=../assets/main.css

  #add links to each post to homepage
  #thanks to stackoverflow https://stackoverflow.com/questions/41655600/read-yaml-metadata-from-a-pandoc-markdown-file
  echo -e "[Week $i" (pandoc --template=_includes/metadata.pandoc-tpl week$i/index.md | jq '.title' )"](week$i/)\n" >> index.md
end

pandoc -s index.md -o index.html -B ./_includes/home-nav.html --css=./assets/classless.css --css=./assets/main.css
