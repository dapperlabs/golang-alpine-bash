FROM golang:1.13-alpine
RUN apk --update --no-cache add tar gcc bash musl-dev ca-certificates git openssh make && rm -rf /var/cache/apk/*
RUN go get -u github.com/go-bindata/go-bindata/...
RUN go get -u golang.org/x/tools/cmd/stringer
