FROM golang

WORKDIR /usr/src/app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build && \
    rm -rf /usr/local/go/pkg && \
    rm -rf /go/pkg/mod && \
    rm -rf /root/.cache && \
    rm -rf /usr/src/app/cache && \
    rm -rf /usr/src/app/router/* && \
    rm -rf /usr/src/app/pgconnection/* && \
    rm -rf /usr/src/app/common/* && \
    rm -rf /usr/src/app/controller/* && \
    rm -rf /usr/src/app/*.go && \
    rm -rf /var/lib/apt/lists/* && \
    # Create non-root user
    useradd -m appuser && \
    chown appuser /usr/src/app

USER appuser

EXPOSE 8080

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:64791

CMD ["./server"]