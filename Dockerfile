FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y cmake g++

RUN apt-get install -y tar wget xz-utils git

RUN apt-get install -y libfreetype6-dev libfontconfig1-dev libnss3-dev

RUN apt-get install -y libjpeg-dev libopenjp2-7-dev

COPY ./compile /compile

RUN chmod a+rwx /compile

CMD ["bash", "./compile"]