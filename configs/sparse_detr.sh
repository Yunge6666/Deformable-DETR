#!/usr/bin/env bash

set -x

EXP_DIR=exps/one_stage/sparse_detr
PY_ARGS=${@:1}

python -u main.py \
    --output_dir ${EXP_DIR} \
    --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
    --with_box_refine \
    --batch_size 1 \
    --dim_feedforward 1024 \
    --num_queries 300 \
    --epochs 50 \
    --lr_drop 40 \
    --dropout 0.0 \
    --backbone SparseVit \
    --lr 2e-6 \
    --pretrained_backbone_path 'https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth' \
    --pruning_ratios '[[0.8, 0.8], [0.5, 0.5], [0.2, 0.2, 0.4, 0.4, 0.5, 0.5], [0.3, 0.3]]' \
    --rho 0.1 \
    --use_enc_aux_loss \
    --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
    ${PY_ARGS}

# --pruning_ratios '[[0.3, 0.3], [0.0, 0.0], [0.1, 0.1, 0.2, 0.2, 0.2, 0.2], [0.0, 0.0]]' \
# --load_from '/media/yunge/HDD1/H-Deformable-DETR/exps/one_stage/swin_tiny_one_stage_1024/checkpoint49.pth' \
# --coco_path /media/yunge/HDD1/mask_coco/output4 \
# --coco_path /media/yunge/HDD1/mmdetection/data/coco/ \
# --resume H-Deformable-DETR/exps/one_stage/sparsevit_dim1024/checkpoint.pth \
#  [[0.8, 0.8], [0.5, 0.5], [0.1, 0.1, 0.4, 0.4, 0.5, 0.5], [0.3, 0.3]]
# [[0.8, 0.8], [0.5, 0.5], [0.2, 0.2, 0.4, 0.4, 0.5, 0.5], [0.3, 0.3]]  43.6  46.6
#  [[0.8, 0.8], [0.5, 0.5], [0.3, 0.3, 0.4, 0.4, 0.5, 0.5], [0.4, 0.4]] 43.7  46.3
# [[0.8, 0.8], [0.5, 0.5], [0.3, 0.3, 0.4, 0.4, 0.5, 0.5], [0.3, 0.3]]  43.5  46.4