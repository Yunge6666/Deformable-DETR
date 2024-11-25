export NCCL_IB_DISABLE=1
./tools/run_dist_launch.sh 1 ./configs/r50_deformable_detr.sh   \
   --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
   --num_queries 300 --epochs 50 --enc_layers 6 --dec_layers 6 \
   --with_box_refine  --lr_drop 40 --batch_size 1      \
   --dim_feedforward 1024 \
   --output_dir base_res_300q
# bash exps/base_test.sh 49
# bash exps/base_test.sh 48
# bash exps/base_test.sh 47
