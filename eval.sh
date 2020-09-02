DIR=~/ielab/bertserini/inference_result
FILE=inference_result_bert_base_dev.json
DATA_PATH=~/ielab/bertserini/SQuAD/SQuAD_v1.1/dev-v1.1.json

python3 aggregate.py \
    --eval_data ${DATA_PATH} \
    --search_file ${DIR}/${FILE} \
    --output_path ${DIR} \
    --dataset squad

