#
#   run.sh
#
#   ${1}: path to the input file
#   ${2}: path to the output file
#

# testing
CUDA_VISIBLE_DEVICES=0,1 python run_summarization.py \
    --model_name_or_path ./ckpt/ \
    --do_predict \
    --test_file ${1} \
    --source_prefix "summarize: " \
    --text_column maintext \
    --output_dir ./preds/ \
    --overwrite_output_dir \
    --predict_with_generate \
    --fp16 yes \
    --num_beams 4 \

python postprocess.py --input ${1} --output ${2}
