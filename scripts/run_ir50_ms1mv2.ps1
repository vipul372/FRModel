
$arguments = @(
    "--data_root", "data",
    "--train_data_path", "faces_emore",
    "--val_data_path", "faces_emore",
    "--prefix", "ir50_ms1mv2_adaface",
    "--use_wandb",
    "--use_mxrecord",
    "--gpus", "0",
    "--arch", "ir_50",
    "--batch_size", "8",
    "--num_workers", "4",
    "--epochs", "26",
    "--lr_milestones", "12,20,24",
    "--lr", "0.1",
    "--head", "adaface",
    "--m", "0.4",
    "--h", "0.333",
    "--low_res_augmentation_prob","0.2"
)

python main.py $arguments