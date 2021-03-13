#! /usr/bin/env bash

folder="$PWD"
new_folder="${folder}/resamled_dpi"
mkdir -p $new_folder

# convert $img -resize 300x400 $img2
for img in $(ls "$folder" | grep '\.tiff$' );do
    path="$folder/$img"
    echo  "resampling $path ..."
    echo  "saved at $new_folder/$img"
    convert -units PixelsPerInch $path -resample 330 "$new_folder/$img"
    echo "done"
    # echo $path
    # echo new path "$new_folder/$img"
done

