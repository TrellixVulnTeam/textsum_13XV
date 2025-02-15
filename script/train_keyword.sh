PY=../python/train.py
MODEL_DIR=../model/model_keyword
TRAIN_PATH_FROM=../data/keyword/train_content.txt
DEV_PATH_FROM=../data/keyword/dev_content.txt
TEST_PATH_FROM=../data/keyword/test_content.txt
TRAIN_PATH_TO=../data/keyword/train_title.txt
DEV_PATH_TO=../data/keyword/dev_title.txt
TEST_PATH_TO=../data/keyword/test_title.txt


export CUDA_VISIBLE_DEVICES=1


python $PY --model_dir $MODEL_DIR \
    --train_path_from $TRAIN_PATH_FROM --dev_path_from $DEV_PATH_FROM \
    --train_path_to $TRAIN_PATH_TO --dev_path_to $DEV_PATH_TO \
    --batch_size 64 --from_vocab_size 10000 --to_vocab_size 10000 --size 128 --num_layers 2 \
    --n_epoch 10 --saveCheckpoint True --attention False --learning_rate 0.1 --keep_prob 0.7
    
