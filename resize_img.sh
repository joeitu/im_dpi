#! /usr/bin/env bash

folder="$PWD"
new_folder="${folder}/resized"
mkdir -p $new_folder

for img in $(ls "$folder" | grep '\.tiff$' );do
    path="$folder/$img"
    echo  "resampling $path ..."
    echo  "saved at $new_folder/$img"
    convert $path -resize 300x400 "$new_folder/$img"
    echo "done"
done

