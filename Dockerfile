FROM ubuntu:latest

RUN \
  DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y install \
    build-essential gcc-multilib mingw-w64 yasm wget pkg-config cmake \
    libavcodec-dev libavformat-dev libavutil-dev libavresample-dev \
    libfftw3-dev libgtest-dev libboost-all-dev
