#!/bin/bash

OUTDIR=/workspace
cd /work/mandarin-tts/examples/aishell3
EXTRA_PARAM=''
if [[ -f "$OUTDIR/__voice__.txt" ]]; then
    EXTRA_PARAM="-v $(cat $OUTDIR/__voice__.txt)"
fi
python3 ../../mtts/text/preprocess.py -t "$(cat $OUTDIR/__input__.txt)" $EXTRA_PARAM
cat processed.txt
python3 ../../mtts/synthesize2.py  -d cuda -c config.yaml --checkpoint /root/checkpoints/checkpoint_1350000.pth.tar --device cpu -i processed.txt
python3 combine.py
lame -V 0 __out__.wav
mv __out__.mp3 $OUTDIR