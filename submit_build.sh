 sbatch --output=./outputs/%j.out --gres=gpu:1 --constraint='titan_xp' --mem=32G job_build.sh
