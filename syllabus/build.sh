#!/bin/bash
pandoc -s index.md -o index.html --metadata title='Syllabus' --css=../assets/classless.css --css=../assets/main.css
