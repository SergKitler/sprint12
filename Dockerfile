FROM golang:1.22.0

WORKDIR /usr/src/app

COPY ./cmd .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12

CMD ["/sprint12"]
