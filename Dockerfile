FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/eunki7/go-roblox-server
COPY . $GOPATH/src/github.com/eunki7/go-roblox-server
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-roblox-server"]
