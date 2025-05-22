.PHONY: all test lint clean

all: test lint

# Run all tests
test:
	gno test ./...

# Run linter
lint:
	gno lint ./...

# Clean build artifacts
clean:
	rm -rf .gno/

# Install dependencies
deps:
	go mod tidy
	gno mod tidy

# Run the development node
dev:
	gnodev 

install_deps:
	curl https://raw.githubusercontent.com/gnolang/gno/refs/heads/master/misc/install.sh | bash
	