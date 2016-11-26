FROM docker.oxygene.sk/acoustid/chromaprint-build:latest

ENV ANDROID_NDK /opt/android-ndk

RUN \
  cd /opt && \
  wget -q https://dl.google.com/android/repository/android-ndk-r13b-linux-x86_64.zip && \
  unzip -q android-ndk-*.zip && \
  rm android-ndk-*.zip && \
  mv android-ndk-* android-ndk

RUN cd /opt && \
    wget -q https://github.com/taka-no-me/android-cmake/archive/master.zip && \
    unzip -q master.zip && \
    rm master.zip && \
    mv android-cmake-master android-cmake
