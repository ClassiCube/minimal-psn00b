FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y install bash make cmake

RUN echo "## Exporting ps3dev environment" >> /root/.bashrc
RUN echo "export PSNOOB=/usr/local/psnoob" >> /root/.bashrc
RUN echo "export PATH=\$PATH:\$PSNOOB/bin" >> /root/.bashrc
RUN echo "export PSN00BSDK_LIBS=$PSNOOB/lib/libpsn00b" >> /root/.bashrc

COPY . /usr/local/psnoob
