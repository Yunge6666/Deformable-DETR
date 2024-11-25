export NCCL_IB_DISABLE=1
./tools/run_dist_launch.sh 1 ./configs/swin_tiny_one_stage.sh   \
   --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
   --num_queries 300 \
   --output_dir base_swint
