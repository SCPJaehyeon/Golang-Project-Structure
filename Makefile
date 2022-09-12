GOCMD=go
GOTEST=$(GOCMD) test
GOARCH=amd64
GOOS=linux
BINARY_NAME=myapp
VERSION=0.0.1

builds:
	GOARCH=$(GOARCH) GOOS=$(GOOS) $(GOCMD) build -o ./bin/$(BINARY_NAME)-$(VERSION) ./cmd/myapp/main.go

run:
	./bin/$(BINARY_NAME)-$(VERSION)

tests:
	$(GOTEST) -v -race ./test/

clean:
	rm bin/$(BINARY_NAME)-$(VERSION)