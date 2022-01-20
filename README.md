# ethereum nft example

## What is this Repository

- nft generator

## Set up

- initialize

```
$ make init
```

- start hardhat node

```
$ make run-node

Started HTTP and WebSocket JSON-RPC server at http://127.0.0.1:8545/
Accounts
========

WARNING: These accounts, and their private keys, are publicly known.
Any funds sent to them on Mainnet or any other live network WILL BE LOST.

Account #0: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 (10000 ETH)
Private Key: 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

Account #1: 0x70997970c51812dc3a010c7d01b50e0d17dc79c8 (10000 ETH)
Private Key: 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
.
.
.
Account #19: 0x8626f6940e2eb28930efb4cef49b2d1f2c9c1199 (10000 ETH)
Private Key: 0xdf57089febbacf7ba0bc227dafbffa9fc08a93fdc68e1e42411a14efcf23656e

WARNING: These accounts, and their private keys, are publicly known.
Any funds sent to them on Mainnet or any other live network WILL BE LOST.
```

- edit `.env` file

write PUBLIC_KEY（Account） and PRIVATE_KEY（Account Private Key）.

```
+ PUBLIC_KEY=0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
+ PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
  PROVIDER_URL=127.0.0.1:8542
  CONTRACT_ADDRESS=
  ROPSTEN_ENDPOINT=
```

- deploy contracts

```
$ make deploy-contract
npx hardhat run --network localhost scripts/deploy.js
NFT deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
```

- edit `.env` file

```
  PUBLIC_KEY=0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
  PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
  PROVIDER_URL=127.0.0.1:8542
+ CONTRACT_ADDRESS=0x5FbDB2315678afecb367f032d93F642f64180aa3
  ROPSTEN_ENDPOINT=
```

## Generate NFT

```
$ make create-nft
```

### View NFT

```
$ make view
```
