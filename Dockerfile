FROM golang:1.18

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential

ADD . /cli
WORKDIR /cli

RUN make
RUN go mod tidy
RUN go build