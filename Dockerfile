FROM alpine:latest

RUN apk update && apk add --no-cache \
    nasm \
    gcc \
    g++ \
    gdb \
    make \
    libc-dev \
    file \
    curl \
    && sh -c "$(curl -fsSL https://gef.blah.cat/sh)"


COPY . /home
WORKDIR /home
ENTRYPOINT [ "/bin/sh" ]

