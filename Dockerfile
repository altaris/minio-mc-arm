FROM arm32v7/alpine:3.12

COPY qemu-arm-static /usr/bin

WORKDIR /usr/bin/
RUN                                                                    \
    apk add --no-cache curl                                         && \
    curl -sSLO https://dl.minio.io/client/mc/release/linux-arm/mc   && \
    chmod 0755 ./mc

ENTRYPOINT ["mc"]
