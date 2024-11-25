export NCCL_IB_DISABLE=1
python3 testing.py  --num_gpus 1                                \
 --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman    \
 --num_queries 300 --output_dir output/eval_dump                \
 --batch_size 1 --start_epoch $1 --end_epoch $[$1+1]      \
 --with_box_refine --output_dir base_swint --aps 0 --backbone swin_tiny \
 --dim_feedforward 1024 \
 --pretrained_backbone_path 'https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth'
python3 demo_opt.py base_swint $1