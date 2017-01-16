#!/bin/bash

cd tex

printf "\n-----------PDFLATEX-------------\n"

pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../build $1.tex

cd ..

mkdir -p ./build
mv ./build/$1.pdf ./pdf
okular ./pdf/$1.pdf &
