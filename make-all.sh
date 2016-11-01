#!/bin/bash

printf "------------PDFLATEX------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=./build ./tex/*.tex
printf "\n------------BIBTEX--------------\n"
cd tex
bibtex ../build/praca_magisterska.aux
cd ..
printf "\n-----------PDFLATEX-------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=./build ./tex/*.tex
mv ./build/*.pdf ./pdf
evince ./pdf/praca_magisterska.pdf &
