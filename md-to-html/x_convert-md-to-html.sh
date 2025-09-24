#!/bin/bash

docker run --rm -v "$(pwd):/markdown-data" toteabe/md-to-html:3.0
find . -name "*.md" -type f -delete
cp index.html ../toteabe.github.io/
cp gandalf_tuxedo.png ../toteabe.github.io/
cp -R ./ud1_desarrollo_software ../toteabe.github.io/
