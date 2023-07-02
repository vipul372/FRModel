
python main.py \
    --data_root data \
    --train_data_path aligned_pad_0.1_pad_high/Train \
    --val_data_path faces_emore \
    --prefix finetune_ir50_ms1mv2_adaface \
    --use_wandb \
    --gpus 1 \
    --use_16bit \
    --arch ir_50 \
    --batch_size 64 \
    --num_workers 4 \
    --epochs 17 \
    --lr_milestones 5,10,15 \
    --lr 0.01 \
    --head adaface \
    --m 0.4 \
    --h 0.333 \
    --low_res_augmentation_prob 0.2 \
    --crop_augmentation_prob 0.2 \
    --photometric_augmentation_prob 0.2 \
    --start_from_model_statedict pretrained/adaface_ir50_ms1mv2.ckpt \
    --fine_tune \
    --custom_num_class 2570

