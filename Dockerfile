FROM golang:1.7.1

# Copy everything from the src directory to /go/src directory inside the container
COPY src /go/src

# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -o bin/sample src/sample/trivial-web-server.go

# This container exposes port 8080 to the outside world
EXPOSE 8080

# Run the binary program produced by `go install`
CMD ["./bin/sample"]
