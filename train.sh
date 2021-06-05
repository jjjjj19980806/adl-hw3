#
#   train.sh
#

# training
CUDA_VISIBLE_DEVICES=0,1 python run_summarization.py \
    --model_name_or_path google/mt5-small \
    --do_train \
    --do_eval \
    --train_file ./data/train.jsonl \
    --validation_file ./data/public.jsonl \
    --source_prefix "summarize: " \
    --text_column maintext \
    --summary_column title \
    --output_dir ./ckpt/ \
    --per_device_train_batch_size=4 \
    --per_device_eval_batch_size=4 \
    --overwrite_output_dir \
    --predict_with_generate \
    --fp16 yes \
    --evaluation_strategy steps \
    --eval_steps 500 \
    --report_to wandb \
    --run_name ADL3-512 \
    --max_source_length 512 \
    --max_target_length 64 \
    --max_eval_samples 512 \
    # --max_train_samples 512 \
    # --gradient_accumulation_step=2 \
    