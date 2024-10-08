
torchrun --nnodes=1 --nproc_per_node 8  --master_port 29503 \
    -m opensora.sample.sample_inpaint_sp \
    --model_path /path/to/checkpoint-xxx/model \
    --num_frames 93 \
    --height 480 \
    --width 640 \
    --cache_dir "../cache_dir" \
    --text_encoder_name google/mt5-xxl \
    --text_prompt examples/prompt_list_0.txt \
    --conditional_images_path examples/conditional_images_path.txt \
    --ae CausalVAEModel_D4_4x8x8 \
    --ae_path "/path/to/causalvideovae" \
    --save_img_path "./sample_video_93x480p_cfg7.5_step100" \
    --fps 24 \
    --guidance_scale 7.5 \
    --num_sampling_steps 100 \
    --enable_tiling \
    --tile_overlap_factor 0.125 \
    --max_sequence_length 512 \
    --sample_method PNDM \