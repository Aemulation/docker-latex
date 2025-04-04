FROM ubuntu:25.04

RUN mkdir -p /tmp/app
WORKDIR /tmp/app

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y texlive-full
RUN apt-get clean

CMD ["pdflatex", "main.tex"]
