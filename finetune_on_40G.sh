python lerobot/scripts/dps_train.py \
    --deepspeed="./ds_zero2_40G.json" \
    --policy.type="pi0" \
    --dataset.root="/mnt/wangxiaofa/robot_dataset/lerobot-format/simpler_fractal" \
    --dataset.repo_id="any/simulted" \
    --wandb.enable=true \
    --wandb.project="pi0-ft-simulated" \
    --job_name="pi0-04-28-ft-simpler-fractal-bs-16-2gpu-gra-acc-4-with-lr-decay-warm-1.5k-w-img-aug-no-random-order-and-crop-1st" \
    --log_dir="/mnt/wangxiaofa/logs" \
    --output_dir="/mnt/wangxiaofa/pi0-ft-simulated/0428-ft-simpler-fractal-bs-16-2gpu-gra-acc-4-with-lr-decay-warm-1.5k-w-img-aug-no-random-order-and-crop-1st" \
    --steps=180_000 \
    --dataset.image_transforms.enable=true \
    # --dataset.wrist_image_transforms.enable=true