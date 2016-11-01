#!/bin/bash

mkdir build
cd tex

for file in *
do
  if [[ $file == *".tex"* ]] && [[ $file != *"_content"* ]] && [[ $file != *"praca_magisterska"* ]]
  then
    printf "\n------------PDFLATEX $file------------\n"
    pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../build $file
  fi
done

printf "\n-----------PDFLATEX Praca magisterska-------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../build praca_magisterska.tex

cd ../build

cp ../tex/praca_magisterska.bib .
printf "\n------------BIBTEX--------------\n"
bibtex praca_magisterska.aux
rm  praca_magisterska.bib

cd ../tex

printf "\n-----------PDFLATEX Praca magisterska-------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../build praca_magisterska.tex

printf "\n-----------PDFLATEX Praca magisterska-------------\n"
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../build praca_magisterska.tex

cd ..
cd build

for file in *
do
  if [[ $file == *".pdf"* ]]
  then
    echo "Created $file"
    mv $file ../pdf
  fi
done

cd ..

evince ./pdf/praca_magisterska.pdf &
