 sbatch --output=./outputs/%j.build --gres=gpu:1 --mem=32G job_build.sh --constraint='titan_xp'
