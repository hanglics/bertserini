SQUAD_DIR=~/ielab/bertserini/SQuAD/SQuAD_v1.1
OUTPUT_DIR=~/ielab/bertserini/results/bert_base_squad_v1
OUTPUT_FILENAME=~/ielab/bertserini/results/bert_base_squad_v1/inference_result_bert_base_squad_v1_dev.json

python3 ./search.py \
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
