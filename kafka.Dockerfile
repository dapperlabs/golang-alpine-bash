from gcr.io/axiomzen-registry/golang-alpine-bash:latest

ARG LIBRDKAFKA_VERSION=0.11.6-r1

RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main openssl && \
    apk add librdkafka-dev=${LIBRDKAFKA_VERSION} --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community
