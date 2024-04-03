## Secta Finance Audit

**Secta Finance is a decentralized exchange (DEX) and launchpad native to Linea.**

Secta Finance consists of:

-   **SECTA token**: [Secta.sol](https://github.com/secta-finance/secta-token/blob/main/src/secta.sol)
-   **V2 DEX, IFO**: [secta-smart-contracts](https://github.com/secta-finance/secta-smart-contracts/tree/audit)
-   **V3 DEX - core, router, periphery**: [secta-v3-contracts](https://github.com/secta-finance/secta-v3-contracts/tree/audit)

It is based and forked from PancakeSwap.


## Documentation

https://docs.secta.finance/

## Scope & Deployments

Scope includes solidity files in deployment.

SECTA - [0xbe58d17D397d40fAC21Cb037a62dF2fb11A87715](https://goerli.lineascan.build/address/0xbe58d17D397d40fAC21Cb037a62dF2fb11A87715)

IFO - [0xf1c36092a19cfABaAc70B58DD6807C85d1F6C85A](https://goerli.lineascan.build/address/0xf1c36092a19cfABaAc70B58DD6807C85d1F6C85A)

Other deployment addresses can be found [here](https://github.com/secta-finance/secta-v3-contracts/blob/audit/README.md).

V2 and V3 DEXes are live on Linea mainnet.


Out of Scope details are below.

### Out of Scope

#### V2
| Files | Note |
|---|---|
| projects/ifo/contracts/utils/*.sol | for test |

#### V3

| Files | Note |
|---|---|
| projects/router/contracts/lens/Quoter.sol | not deployed, deprecated |
| projects/router/contracts/lens/Quoter2.sol | not deployed, deprecated, use v3-periphery/Quoter2 instead |
| projects/router/contracts/test/*.sol | for test |
| projects/v3-core/contracts/test/*.sol | for test |
| projects/v3-periphery/contracts/test/*.sol | for test |
| projects/v3-periphery/contracts/examples/PairFlash.sol | examples |
| projects/v3-periphery/contracts/Quote.sol | not deployed, deprecated |
| projects/v3-periphery/contracts/SwapRouter.sol | shadowed by router/SmartRouter, not used in production |


---

Not used, but in scope

| Files | Note |
|---|---|
| projects/v3-periphery/contracts/lens/SectaInterfaceMulticall.sol | not used for now |
| projects/v3-periphery/contracts/lens/TickLens.sol | not used for now |
| projects/v3-periphery/contracts/NonfungibleTokenPositionDescriptor.sol | not used for now |



## Usage

### V2

### Install Dependencies

```shell
$ yarn
```

### Test

`cd` into corresponding project, e.g. `cd projects/ifo`, then

```shell
$ yarn test
```

### Format

```shell
$ yarn format:write
```

### Deploy

`cd` into corresponding project, e.g. `cd projects/ifo`, then

```shell
$ npx hardhat run scripts/deploy-ifo-v2-pools.ts --network testnet
```

*Note* For generating IFO private pool merkle tree, we used [OZ MerkleTree](https://github.com/OpenZeppelin/merkle-tree).
Detailed scripts are in the test script. Or same code on [build.js](https://github.com/lijac/lplist/blob/main/build.mjs), [show.mjs](https://github.com/lijac/lplist/blob/main/show.mjs)


### V3

### Install Dependencies

```shell
$ yarn
```

### Test

```shell
$ yarn test
```

### Compile

```shell
$ yarn compile
```

### Deploy

See [README](https://github.com/secta-finance/secta-v3-contracts/blob/audit/README.md#deployments).
