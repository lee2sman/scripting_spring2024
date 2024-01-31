#!/bin/bash
pandoc -s index.md -o index.html --metadata title='Week 2 - CSS Frameworks + Working with a Server' --css=../assets/classless.css --css=../assets/post.css
