FROM golang:alpine as base

RUN apk add -U --no-cache git
RUN go get github.com/ericchiang/pup

FROM alpine:3.8

COPY --from=base /go/bin/pup /bin/pup
RUN apk add -U --no-cache postgresql-client curl zip bash

WORKDIR /tmp

COPY ./run ./
ENTRYPOINT ["/tmp/run"]
