
python main2.py \
    --data_root data \
    --train_data_path aligned_pad_0.1_pad_high/Train2 \
    --val_data_path aligned_pad_0.1_pad_high/Valid \
    --prefix finetune_ir18_adaface_nolfw \
    --use_wandb \
    --gpus 1 \
    --use_16bit \
    --arch ir_18 \
    --batch_size 128 \
    --num_workers 4 \
    --epochs 10 \
    --lr_milestones 4,6,8 \
    --lr 0.01 \
    --head adaface \
    --m 0.4 \
    --h 0.333 \
    --low_res_augmentation_prob 0.2 \
    --crop_augmentation_prob 0.2 \
    --photometric_augmentation_prob 0.2 \
    --start_from_model_statedict pretrained/my_adaface_ir18_casia.ckpt \
    --fine_tune \
    --custom_num_class 2570 \
    --swap_color_channel

