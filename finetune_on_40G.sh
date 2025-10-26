USE_STATE=true
JOB_NAME="1009-american-data-w-state"
DATA_MIX="simpler"

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case "$1" in
        --use_state)
            USE_STATE="$2"
            shift 2
            ;;
        --job_name)
            JOB_NAME="$2"
            shift 2
            ;;
        --data_mix)
            DATA_MIX="$2"
            shift 2
            ;;
    esac
done
OUTPUT_DIR="/mnt/wangxiaofa/pi0-ft-simulated/${JOB_NAME}"

python lerobot/scripts/dps_train.py \
    --deepspeed="./ds_zero2_40G.json" \
    --policy.type="pi0" \
    --policy.use_lora=false \
    --dataset.root="/mnt/wangxiaofa/robot_dataset/lerobot-format" \
    --dataset.repo_id="any/simulted" \
    --dataset.data_mix=$DATA_MIX \
    --dataset.use_state=$USE_STATE \
    --dataset.image_transforms.enable=false \
    --wandb.enable=false \
    --resume=true \
    --wandb.project="pi0-ft-simulated" \
    --job_name=$JOB_NAME \
    --log_dir="/mnt/wangxiaofa/logs" \
    --output_dir=$OUTPUT_DIR \
    --steps=300_000 \
    --policy.pt_weight_path="/mnt/wangxiaofa/pi0_05/pi05_base/model_new.pt" \
    --policy.pretrained_path="" 