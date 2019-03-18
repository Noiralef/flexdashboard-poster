#!/bin/bash

for f in $(dirname $0)/../output/img/*.pdf; do
  pdftoppm $f temp -png -singlefile -r 2500
  convert -resample 300 temp.png ${f%.*}.png
  rm temp.png
done