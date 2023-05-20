FROM arm64v8/ubuntu:18.04
ARG TARGETPLATFORM
RUN echo "I'm building for $TARGETPLATFORM"
USER root

ENV WORKDIR /workspace
ENV LLVM_CONFIG=/usr/bin/llvm-config

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y --fix-missing && apt-get install software-properties-common; \
   add-apt-repository -y ppa:deadsnakes/ppa;\
   apt-get install -y libblas-dev liblapack-dev build-essential gfortran libatlas-base-dev liblzma-dev llvm-7 libsndfile1 curl git lame libffi-dev python3.8 python3.8-dev python3-pip;\
   mkdir /root/checkpoints/ /work /workspace ;\
   curl -s https://zenodo.org/record/4912321/files/checkpoint_1350000.pth.tar -o /root/checkpoints//checkpoint_1350000.pth.tar & \
   curl -s https://zenodo.org/record/4743731/files/vctk_pretrained_model_3180.pt -o /root/checkpoints/vctk_pretrained_model_3180.pt & \
   cd /work && git clone https://github.com/ranchlai/mandarin-tts.git && cd /work/mandarin-tts && git submodule update --force --recursive --init --remote &\
   wait

RUN cd /usr/bin/ ; unlink python3; ln -s python3.8 python3; ln -s llvm-config-7 llvm-config;ln -s pip3 pip;\
   pip install --upgrade pip;\
   pip install cython ;pip install pybind11;pip install pythran;pip install numpy==1.20.2 scipy==1.7.1 torch==1.9.0;\
   pip install llvmlite==0.31.0 scikit-learn==0.24.2 librosa==0.8.1 resampy==0.2.2 ;\
   rm -f /work/mandarin-tts/examples/aishell3/outputs/*;  \
   cd /work/mandarin-tts ; pip install -r requirements.txt ; pip install -e .

COPY combine.py /work/mandarin-tts/examples/aishell3
COPY preprocess.py /work/mandarin-tts/mtts/text
COPY synthesize2.py /work/mandarin-tts/
COPY docker_run.sh /

RUN chmod a+rwx $WORKDIR /docker_run.sh

CMD ["/docker_run.sh"]

