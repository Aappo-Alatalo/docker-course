FROM golang

WORKDIR /usr/src/app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build

EXPOSE 8080

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:64791

CMD ["./server"]