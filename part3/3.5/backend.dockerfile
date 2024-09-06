FROM golang

WORKDIR /usr/src/app

# create the appuser
RUN useradd -m appuser

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build

EXPOSE 8080

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com/

CMD ["./server"]