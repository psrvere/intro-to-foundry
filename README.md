# Introduction to Foundry

These are my notes on how to use Foundry - Development Framework for Solidity Apps

- It is written in rust and claims to be very fast
- `Forge`: Ethereum testing framework. `Cast`: swiss army knife for interacting with smart contracts. `Anvil`: local ethereum node.
- setup instructions
  - install rust `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
  - `curl -L https://foundry.paradigm.xyz | bash` will install foundry installer
  - `foundryup` will install foundry
  - `forge init` will initialize new project
- Note: working/staging areas has to be clean for foundry to run certain commands

- It installs dependencies directly from github, for example `forge install OpenZeppelin/openzeppelin-contracts` -- this took some time to download and forge didn't show any status bar - for half and hour I thought it wasn't working!
- Git modules allow you to keep a git repository of another project as a sub directory of your project. All dependencies installed by `forge install ...` are also added to .gitmodule file
- Another thing we need to do is remapping in `remappings.txt` file. Refer [this](https://w.mirror.xyz/mOUlpgkWA178HNUW7xR20TdbGRV6dMid7uChqxf9Z58)
- `forge build` - compile
- `forge test` - run tests

- fuzzing test (chaos testing) is a really cool feature! I tested staking function with uin256 amount value which broke the contract as it crossed the max balance limit. Using uint8 solved this problem.
- Cheat feature is also very helpful where we can change EVM state, set block number, etc to run tests on
- use MakeFile to define scripts
- to use local node with foundry
  - add hardhat `npm install hardhat`
  - create hardhat empty config file `npx hardhat`
  - run hardhat node `npx hardhat node`
  - deploy contract on local node `forge create StakeContract --private-key 0x...`. The private key is taken from the hardhat node we ran just above
- read foundry book and foundry starter kit for more details!