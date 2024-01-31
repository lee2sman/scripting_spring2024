#!/bin/bash
pandoc -s week1.md -o index.html --metadata title='Week 1 - HTML and CSS' --css=../assets/classless.css --css=../assets/main.css
