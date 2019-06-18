FROM gcr.io/axiomzen-registry/golang-alpine-bash:latest

ARG LIBRDKAFKA_VERSION=1.0.1-r1

RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main openssl && \
    apk add librdkafka-dev=${LIBRDKAFKA_VERSION} --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community