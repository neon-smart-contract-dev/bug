## Installation

Install [Nix](https://nixos.org/manual/nix/stable/quick-start.html) if you haven't already:

```bash
sh <(curl -L https://nixos.org/nix/install)
```

Then install [dapptools](https://github.com/dapphub/dapptools).

```bash
curl https://dapp.tools/install | sh
```

This configures the dapphub binary cache and installs the dapp, solc, seth and hevm executables.

## Deploy and test

Deploy smart contract and run tests:

```bash
ETH_FROM=0xa3a0E8Fbe0Ad412D808693EDc2751f0776e13AF1 . deploy_and_test.sh
```

Run tests (without deployment):

```bash
ETH_FROM=0xa3a0E8Fbe0Ad412D808693EDc2751f0776e13AF1 BUG_ADDRESS=0x6C72573564A2b9B53e189B5fa6420DE649a01577 . test_after_deploy.sh
```
