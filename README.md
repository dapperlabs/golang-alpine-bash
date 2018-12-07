# golang-alpine-bash
Golang:Alpine based image with useful things on it

**To Update This Image**

1. Get Latest Golang container `docker pull golang:alpine`
2. Add something to the changelog
3. Commit that change
4. Build: `docker build -t gcr.io/axiomzen-registry/golang-alpine-bash:latest -t gcr.io/axiomzen-registry/golang-alpine-bash:$(git rev-parse --short HEAD) .` 
5. Push: `docker push gcr.io/axiomzen-registry/golang-alpine-bash:latest && docker push gcr.io/axiomzen-registry/golang-alpine-bash:$(git rev-parse --short HEAD)`