 sbatch --output=./outputs/%j.cmpl --gres=gpu:1 --mem=32G job_run.sh --constraint='pascal'