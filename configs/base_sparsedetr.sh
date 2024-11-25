# export NCCL_IB_DISABLE=1
# ./tools/run_dist_launch.sh 1 ./configs/r50_deformable_detr.sh   \
#    --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
#    --num_queries 300 --epochs 50 --enc_layers 6 --dec_layers 6 \
#    --with_box_refine  --lr_drop 40 --batch_size 1 --dim_feedforward 1024 \
#    --dim_feedforward 1024 \
#    --pretrained_backbone_path 'https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth' \
#    --backbone SparseVit \
#    --random_sample   \
#    --rho 0.1 \
#    --use_enc_aux_loss \
#    --pruning_ratios '[[0.8, 0.8], [0.5, 0.5], [0.2, 0.2, 0.4, 0.4, 0.5, 0.5], [0.3, 0.3]]' \
#    --output_dir base_sparsevit
# bash exps/base_sparsevit_test.sh 49
# bash exps/base_sparsevit_test.sh 48
# bash exps/base_sparsevit_test.sh 47

export NCCL_IB_DISABLE=1
./tools/run_dist_launch.sh 1 ./configs/sparse_detr.sh   \
   --coco_path /media/yunge/HDD1/MOTR/MOTR/datasets/crowdhuman \
   --output_dir base_sparsedetr