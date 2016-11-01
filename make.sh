#!/bin/bash

printf "\n-----------PDFLATEX-------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=./build ./tex/$1.tex
mkdir ./build
mv ./build/$1.pdf ./pdf
evince ./pdf/$1.pdf &
