#!/bin/bash

# User-configurable variables
ANIMATE_FRAMES=120 # Number of animation frames
DELAY=3            # GIF frame delay
NUM_SHARDS=12      # Total number of shards (parallel processes)

# Render frames in parallel using animate_sharding
for SHARD in $(seq 1 $NUM_SHARDS); do
  openscad --animate $ANIMATE_FRAMES \
    --animate_sharding $SHARD/$NUM_SHARDS \
    -o assets/frame${SHARD}_%d.png \
    --colorscheme BeforeDawn \
    --imgsize=1200,500 src/all_components.scad &
done

# Wait for all background processes to finish
wait

# Combine all PNG frames into a GIF using magick (ImageMagick)
magick assets/frame*.png -set delay $DELAY animated.gif

# Generate a MP4 file from the GIF
ffmpeg -i animated.gif -movflags faststart -pix_fmt yuv420p animated.mp4

# clean up
rm assets/frame*.png
