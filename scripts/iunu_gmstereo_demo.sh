#!/usr/bin/env bash


# gmstereo-scale2-regrefine3 model
CUDA_VISIBLE_DEVICES=0 python3 main_stereo.py \
--inference_dir /home/aboggaram/data/Octiva/stereo_test_raw_images \
--inference_size 1024 1280 \
--output_path /home/aboggaram/data/Octiva/unimatch_stereo_test_output \
--resume pretrained/gmstereo-scale2-regrefine3-resumeflowthings-middleburyfthighres-a82bec03.pth \
--padding_factor 32 \
--upsample_factor 4 \
--num_scales 2 \
--attn_type self_swin2d_cross_swin1d \
--attn_splits_list 2 8 \
--corr_radius_list -1 4 \
--prop_radius_list -1 1 \
--reg_refine \
--num_reg_refine 3
# optionally predict both left and right disparities
#--pred_bidir_disp




