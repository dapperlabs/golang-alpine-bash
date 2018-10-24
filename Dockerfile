FROM golang:alpine
RUN apk --update --no-cache add tar gcc bash musl-dev ca-certificates git && rm -rf /var/cache/apk/*
