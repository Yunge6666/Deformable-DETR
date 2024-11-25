export NCCL_IB_DISABLE=1
python3 testing.py  --num_gpus 1                          \
 --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
 --num_queries 300 --output_dir output/eval_dump         \
 --batch_size 1 --start_epoch $1 --end_epoch $[$1+1]      \
 --dim_feedforward 1024 \
 --with_box_refine --output_dir base
python3 demo_opt.py base $1