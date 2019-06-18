# golang-alpine-bash

Golang:Alpine based image with useful things on it

**To Update This Image**

1. Get Latest Golang container `docker pull golang:alpine`
2. Add something to the changelog
3. Commit that change
4. Build: `docker build -t gcr.io/axiomzen-registry/golang-alpine-bash:latest -t gcr.io/axiomzen-registry/golang-alpine-bash:$(git rev-parse --short HEAD) .`
5. Push: `docker push gcr.io/axiomzen-registry/golang-alpine-bash:latest && docker push gcr.io/axiomzen-registry/golang-alpine-bash:$(git rev-parse --short HEAD)`

**Kafka**

- kafka.Dockerfile builds ontop of golang-alpine-bash.
- Build: `docker build -t gcr.io/axiomzen-registry/golang-alpine-kafka:latest -t gcr.io/axiomzen-registry/golang-alpine-kafka:$(git rev-parse --short HEAD) .`
- Push: `docker push gcr.io/axiomzen-registry/golang-alpine-kafka:latest && docker push gcr.io/axiomzen-registry/golang-alpine-kafka:$(git rev-parse --short HEAD)`

**Kafka Beta**
Uses librdkafka version 1.0.1 which has update considerations upgrading from
version used in golang-alpine-kafka image: see [release notes](https://github.com/edenhill/librdkafka/releases/tag/v1.0.0)

- kafka.beta.Dockerfile builds ontop of golang-alpine-bash
- Build `docker build --file kafka.beta.Dockerfile -t gcr.io/axiomzen-registry/golang-alpine-kafka-beta:latest -t gcr.io/axiomzen-registry/golang-alpine-kafka-beta:$(git rev-parse --short HEAD) .`
- Push: `docker push gcr.io/axiomzen-registry/golang-alpine-kafka-beta:latest && docker push gcr.io/axiomzen-registry/golang-alpine-kafka-beta:$(git rev-parse --short HEAD)`
