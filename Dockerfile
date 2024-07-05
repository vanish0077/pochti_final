FROM golang:1.21.0

WORKDIR /pochti_final

COPY go.mod go.sum tracker.db ./

RUN go mod download 

COPY *.go ./

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go build -o /final

CMD ["/final"]