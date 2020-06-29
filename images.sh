#!/bin/bash

cd tafsir/images
IMAGES=(./*.jpg)

for ((i=0; i<${#IMAGES[@]}; i++)); do
  idx=$(($i + 1))
  echo "${IMAGES[$i]} - $idx"
  convert "${IMAGES[$i]}" -resize 1200x1200 "image-$idx.png"
  convert "image-$idx.png" -resize 200x200 "image-$idx-thumbnail.png"
  rm "${IMAGES[$i]}"
done
