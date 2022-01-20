#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate ngp
nvidia-smi

cmake . -B build
cmake --build build --config RelWithDebInfo -j 16

python -u scripts/run.py \
--mode image \
--scene data/image/albert.exr \
--width 1280 \
--height 720 \
--n_steps 50000 \
--screenshot_frames [1] \
--screenshot_spp 16 \
--screenshot_dir ./outputs/visualizations/

# python -u scripts/run.py \
# --mode volume \
# --scene data/volume/wdas_cloud_quarter.nvdb \
# --width 1280 \
# --height 720 \
# --n_steps 50000 \
# --screenshot_frames [1] \
# --screenshot_spp 16 \
# --screenshot_dir ./outputs/visualizations/

# python -u scripts/run.py \
# --mode sdf \
# --scene data/sdf/armadillo.obj \
# --width 1280 \
# --height 720 \
# --n_steps 50000 \
# --screenshot_frames [1] \
# --screenshot_spp 16 \
# --screenshot_dir ./outputs/visualizations/

# python -u scripts/run.py \
# --mode nerf \
# --scene data/nerf/fox \
# --width 1280 \
# --height 720 \
# --n_steps 50000 \
# --screenshot_frames [1] \
# --screenshot_spp 16 \
# --screenshot_dir ./outputs/visualizations/