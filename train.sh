python run_summarization.py \
    --model_name_or_path google/mt5-small \
    --do_train \
    --do_eval \
    --train_file ./data/train.json \
    --validation_file ./data/public.json \
    --source_prefix "summarize: " \
    --text_column maintext \
    --summary_column title \
    --output_dir ./ckpt/ \
    --per_device_train_batch_size=2 \
    --per_device_eval_batch_size=2 \
    --overwrite_output_dir \
    --predict_with_generate \
    --max_train_samples 128 \
    --max_eval_samples 128 \
    