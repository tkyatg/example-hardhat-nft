
init:
	cp .env.example .env
	npm install
run-node:
	npx hardhat node
deploy-contract:
	npx hardhat run --network localhost scripts/deploy.js
create-nft:
	npx hardhat run --network localhost scripts/mint.js
view:
	npx hardhat run --network localhost scripts/view.js

## ropsten
deploy-contract-testnet:
	npx hardhat run --network ropsten scripts/deploy.js
create-nft-testnet:
	npx hardhat run --network ropsten scripts/mint.js
view-testnet:
	npx hardhat run --network ropsten scripts/view.js