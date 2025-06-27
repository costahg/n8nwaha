FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache \
  ffmpeg \
  imagemagick \
  ghostscript \
  python3 \
  py3-pip

RUN python3 -m venv /opt/venv \
  && . /opt/venv/bin/activate \
  && pip install gdown

ENV PATH="/opt/venv/bin:$PATH"

USER node
