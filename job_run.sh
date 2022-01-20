#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate ngp
python -u scripts/run.py --mode nerf --scene data/nerf/fox