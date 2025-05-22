# Gno Project Template

This repository serves as a template for starting Gno projects with best
practices and proper tooling baked in. It helps contributors or teams quickly
scaffold a real-world Gno setup.

## Features

- Handles installing Go & Gno dependencies
- Runs gnodev with a minimal default realm
- Includes test and lint commangids
- Integrated with GitHub Actions CI workflow
- Supports both p/ and r/ structure
- Configured for external dependencies
- Editor configurations included

## Prerequisites

- Go 1.21 or later
- Gno development environment

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/gnolang/repo-template.git
   cd repo-template
   ```

2. Install dependencies:
   ```bash
   make deps
   ```

3. Run tests:
   ```bash
   make test
   ```

4. Start the development node:
   ```bash
   make dev
   ```

## Project Structure

- `p/` - Contains packages that can be imported by other Gno code
- `r/` - Contains realms (smart contracts)
- `.github/workflows/` - CI/CD configuration
- `Makefile` - Common development commands

## Development

- `make test` - Run all tests
- `make lint` - Run linter
- `make clean` - Clean build artifacts
- `make deps` - Install dependencies
- `make dev` - Run development node

## License

MIT
