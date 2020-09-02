SQUAD_DIR=~/ielab/bertserini/SQuAD/SQuAD_v1.1
OUTPUT_DIR=~/ielab/bertserini/SQuAD/inference_result
OUTPUT_FILENAME=inference_result_bert_base_dev.json

python ./search.py \
    --para_num 10 \
    --index_path index/lucene-index.enwiki-20180701-paragraphs \
    --model_type bert \
    --model_name_or_path rsvp-ai/bertserini-bert-base-squad \
    --do_eval \
    --do_lower_case \
    --max_seq_length 384 \
    --doc_stride 128 \
    --predict_file $SQUAD_DIR/dev-v1.1.json \
    --eval_batch_size=32 \
    --output_fn $OUTPUT_FILENAME \
    --output_dir $OUTPUT_DIR
