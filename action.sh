#!/bin/bash

OUT_PATH=$(pwd)/$INPUT_CONTENT
cd ~ ; ln -sf /root/checkpoints
cd /
python /prepare.py
bash -c /docker_run.sh
echo $WORKDIR/__out__.mp3 $INPUT_CONTENT
mv $WORKDIR/__out__.mp3 $OUT_PATH
