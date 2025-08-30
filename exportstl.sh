#!/bin/bash

for file in src/*.scad; do
  filename=$(basename "$file" .scad)
  output="stl/${filename}.stl"
  openscad -o "$output" -D u=20 "$file"
done
