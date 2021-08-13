FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-runtime

ENV WORKDIR /workspace
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y --fix-missing && apt-get install -y libsndfile1 curl git lame; \
   mkdir /root/checkpoints/ /work ; \
   curl -s https://zenodo.org/record/4912321/files/checkpoint_1350000.pth.tar -o /root/checkpoints//checkpoint_1350000.pth.tar & \
   curl -s https://zenodo.org/record/4743731/files/vctk_pretrained_model_3180.pt -o /root/checkpoints/vctk_pretrained_model_3180.pt & \
   cd /work && git clone https://github.com/ranchlai/mandarin-tts.git && cd mandarin-tts && git submodule update --force --recursive --init --remote && pip install -r requirements.txt && pip install -e . ; \
   wait

RUN rm -f /work/mandarin-tts/examples/aishell3/outputs/* & \
   cd /work/mandarin-tts ; pip install -e .

COPY combine.py /work/mandarin-tts/examples/aishell3
COPY preprocess.py /work/mandarin-tts/mtts/text
COPY synthesize2.py /work/mandarin-tts/mtts
COPY docker_run.sh /

RUN chmod a+rwx $WORKDIR /docker_run.sh

CMD ["/docker_run.sh"]

