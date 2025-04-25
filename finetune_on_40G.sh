python lerobot/scripts/dps_train.py \
    --deepspeed="./ds_zero2.json" \
    --policy.type="pi0" \
    --dataset.root="/mnt/wangxiaofa/robot_dataset/lerobot-format/simpler_bridge" \
    --dataset.repo_id="any/simulted" \
    --wandb.enable=true \
    --wandb.project="pi0-ft-simulated" \
    --job_name="pi0-04-25-ft-simpler-bridge-bs-16-2gpu-gra-acc-4-with-lr-decay-warm-1k-wo-img-aug-1st" \
    --log_dir="/mnt/wangxiaofa/logs" \
    --output_dir="/mnt/wangxiaofa/pi0-ft-simulated/0425-ft-simpler-bridge-bs-16-2gpu-gra-acc-4-with-lr-decay-warm-1k-wo-img-aug-1st" \
    --steps=120_000 \
    # --dataset.image_transforms.enable=true \
    # --dataset.wrist_image_transforms.enable=true