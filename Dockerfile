FROM --platform=amd64 ubuntu:20.04

RUN apt-get update && \
    apt-get install -y xz-utils
    

COPY factorio.tar.xz /tmp/factorio.tar.xz

# RUN ls -la /tmp && asdkljf

RUN cd /opt/ && \
    tar -xvf /tmp/factorio.tar.xz && \
    rm /tmp/factorio.tar.xz

WORKDIR /opt/factorio

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh
