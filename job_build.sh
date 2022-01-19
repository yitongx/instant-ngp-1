#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate ngp
cmake . -B build
cmake --build build --config RelWithDebInfo -j 16