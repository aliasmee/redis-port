FROM golang:1.9.2
LABEL maintainer="aliasmee@aistarsea.com"

RUN mkdir -pv /go/src/github.com/CodisLabs/redis-port
ADD . /go/src/github.com/CodisLabs/redis-port
WORKDIR /go/src/github.com/CodisLabs/redis-port
RUN make && cp bin/redis-port /usr/local/bin/ && rm -rf /go/src/github.com/CodisLabs/redis-port
