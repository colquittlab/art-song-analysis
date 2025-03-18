#! /bin/bash

PREFIX=`basename $1`
INPUT_DIR=`dirname $1`
MODEL="whisperseg-animal-vad-ct2"
python ~/Song/WhisperSeg/scripts/segment.py --model_path nccratliri/$MODEL --audio_folder $1 \
    --csv_save_path "$INPUT_DIR/$PREFIX"_"$MODEL"_segments.csv