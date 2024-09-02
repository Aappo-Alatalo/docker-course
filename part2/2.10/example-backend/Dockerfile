FROM golang

WORKDIR /usr/src/app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build

EXPOSE 8080

ENV PORT=8080

# 2.9 edit to previous exercise dockerfile
ENV REQUEST_ORIGIN=http://localhost

CMD ["./server"]