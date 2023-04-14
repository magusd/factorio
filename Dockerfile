FROM --platform=amd64 ubuntu:20.04

RUN apt-get update && \
    apt-get install -y xz-utils
    

COPY factorio.tar.xz /tmp/factorio.tar.xz

# RUN ls -la /tmp && asdkljf

RUN cd /opt/ && \
    tar -xvf /tmp/factorio.tar.xz && \
    rm /tmp/factorio.tar.xz && \
    mkdir factorio/saves && \
    useradd factorio && \
    chown -R factorio:factorio /opt/factorio

USER factorio

WORKDIR /opt/factorio

RUN /opt/factorio/bin/x64/factorio --create /opt/factorio/saves/magusd.zip

CMD /opt/factorio/bin/x64/factorio --start-server /opt/factorio/saves/magusd.zip
