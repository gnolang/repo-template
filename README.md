# Gno Project Template

This repository serves as a template for starting Gno projects with best
practices and proper tooling baked in. It helps contributors or teams quickly
scaffold a real-world Gno setup.

## Features

- Installs the Gno toolchain (`make install_deps`; Go, git and make are prerequisites)
- Runs gnodev with a minimal default realm
- `make test` / `make lint` / `make fmt`, with a passing test in each package
- Integrated with GitHub Actions CI workflow
- Supports both `p/` and `r/` structure, linked by a `gnowork.toml` workspace

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/gnolang/repo-template.git
   cd repo-template
   ```

2. Install dependencies:
   ```bash
   make install_deps
   export PATH="$HOME/.gno/bin:$PATH"
   ```

   This builds the Gno toolchain from source into `$HOME/.gno/bin`. It needs Go,
   git and make, and takes a few minutes the first time.

3. Run tests:
   ```bash
   make test
   ```

4. Start the development node:
   ```bash
   make dev
   ```

## Project Structure

- `gnowork.toml` - Marks the workspace root, so `p/` and `r/` can import each
  other during local development. Empty by design.
- `p/` - Contains packages that can be imported by other Gno code
- `r/` - Contains realms (smart contracts)
- `.github/workflows/` - CI/CD configuration
- `Makefile` - Common development commands

Each package carries a `gnomod.toml` declaring its import path and Gno version.

## Deploying

`make dev` runs a throwaway local chain. When you want your realm on a real
network:

- **A testnet** — start here. Testnets are renamed and replaced regularly, so
  look up the current one and its RPC endpoint in
  [Gno networks](https://docs.gno.land/testnets), and get
  tokens from the [faucet](https://faucet.gno.land).
- **[Mainnet](https://gno.land)** (`gnoland-1`, `https://rpc.gno.land:443`) has
  been live since 12 September 2026. Real GNOT, no faucet.

Remember to change `username` in both `gnomod.toml` files to your own namespace
before deploying.

## Development

- `make test` - Run all tests
- `make lint` - Run linter
- `make install_deps` - Install dependencies
- `make dev` - Run development node
