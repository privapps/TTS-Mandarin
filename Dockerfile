FROM ghcr.io/privapps/tts-mandarin:docker

COPY action.sh /
COPY prepare.py /

RUN chmod +x /action.sh

CMD ["/action.sh"]

