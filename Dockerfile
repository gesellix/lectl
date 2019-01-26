FROM alpine:3.8

RUN apk add -U --no-cache \
    bash \
    coreutils \
    curl \
    util-linux

ENTRYPOINT [ "./lectl" ]
CMD [ "--help" ]

WORKDIR /lectl
COPY . /lectl
