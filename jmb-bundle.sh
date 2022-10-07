#!/bin/bash

OUTPUT=`pwd`/build/jmb_flip_fluids_addon.zip

set -ex

python3.9 ./build.py

cd build/bl_flip_fluids

rm -f $OUTPUT
zip -r $OUTPUT .
if [ -e ~/Desktop/blender/addons ]; then
  cp -v $OUTPUT ~/Desktop/blender/addons
fi
