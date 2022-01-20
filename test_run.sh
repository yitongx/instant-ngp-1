#!/bin/bash
conda activate ngp
cmake . -B build
cmake --build build --config RelWithDebInfo -j 16
python -u scripts/run.py --mode nerf --scene data/nerf/fox
