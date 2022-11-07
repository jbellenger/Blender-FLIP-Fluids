#!/bin/bash

OUTPUT=`pwd`/build/jmb_flip_fluids_addon.zip
SKIP_BUILD=${SKIP_BUILD:-0}

set -ex

if [[ $SKIP_BUILD -ne 1 ]]; then
  python3.10 ./build.py
fi

cd build/bl_flip_fluids

rm -f $OUTPUT
zip -r $OUTPUT .
if [ -e /tank/blender/addons ]; then
  cp -v $OUTPUT /tank/blender/addons
fi
