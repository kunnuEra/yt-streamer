FROM ubuntu:20.04

RUN apt update && \
    apt install -y ffmpeg curl

WORKDIR /app

COPY stream.sh .

RUN chmod +x stream.sh

CMD ["bash", "stream.sh"]
