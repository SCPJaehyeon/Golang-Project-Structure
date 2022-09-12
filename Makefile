GOCMD=go
GOTEST=$(GOCMD) test
GOVET=$(GOCMD) vet
GOARCH=amd64
GOOS=linux
BINARY_NAME=myapp
VERSION=0.0.1

all: tests vet builds

tests:
	$(GOTEST) ./...

vet:
	$(GOVET) ./...

builds:
	GOARCH=$(GOARCH) GOOS=$(GOOS) $(GOCMD) build -o ./bin/$(BINARY_NAME)-$(VERSION) ./cmd/myapp/main.go

run:
	./bin/$(BINARY_NAME)-$(VERSION)

clean:
	rm bin/$(BINARY_NAME)-$(VERSION)