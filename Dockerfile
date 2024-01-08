FROM alpine:latest

RUN apk update && apk add --no-cache \
    nasm \
    gcc \
    g++ \
    gdb \
    make \
    libc-dev \
    file


COPY . /home
WORKDIR /home
ENTRYPOINT [ "/bin/sh" ]

