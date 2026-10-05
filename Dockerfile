FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive
ENV MAIN_FILE=main.tex

WORKDIR /tmp/app

RUN apt-get update \
 && apt-get install -y texlive-full \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "exec pdflatex -interaction=nonstopmode \"$MAIN_FILE\""]
