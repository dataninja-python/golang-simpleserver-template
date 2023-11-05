FROM golang

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /golang-simpleserver-template

EXPOSE 8080

CMD ["/golang-simpleserver-template"]
