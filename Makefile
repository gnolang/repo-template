.PHONY: all test lint fmt install_deps

all: fmt test lint

# Run the development node
dev:
	gnodev 

# Run all tests
test:
	gno test -v ./...

# Run linter
lint:
	gno lint -v .

# Format the code
fmt:
	gno fmt -w ./...

install_deps:
	curl https://raw.githubusercontent.com/gnolang/gno/refs/heads/master/misc/install.sh | bash
	