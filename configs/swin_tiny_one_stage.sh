#!/usr/bin/env bash

set -x

EXP_DIR=exps/one_stage/swin_tiny_one_stage
PY_ARGS=${@:1}

python -u main.py \
    --output_dir ${EXP_DIR} \
    --with_box_refine \
    --dim_feedforward 1024 \
    --num_queries 300 \
    --epochs 50 \
    --lr_drop 40 \
    --backbone swin_tiny \
    --pretrained_backbone_path 'https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth' \
    --batch_size 1 \
    --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman   \
    ${PY_ARGS}

    # --coco_path /media/yunge/HDD1/mask_coco/output4 \
    # --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
    #  --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/MOT17_official \
        # --resume exps/one_stage/swin_tiny_one_stage_1024/checkpoint54_swin_detr.pth \