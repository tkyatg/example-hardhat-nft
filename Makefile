init:
	cp .env.example .env
	npm install
	docker-compose up -d --build

run-node:
	docker exec -it contract npx hardhat node

deploy-contract:
	docker exec -it contract npx hardhat run --network localhost scripts/deploy.js

create-nft:
	docker exec -it contract npx hardhat run --network localhost scripts/mint.js

view:
	docker exec -it contract npx hardhat run --network localhost scripts/view.js

## ropsten
deploy-contract-testnet:
	npx hardhat run --network ropsten scripts/deploy.js

create-nft-testnet:
	npx hardhat run --network ropsten scripts/mint.js

view-testnet:
	npx hardhat run --network ropsten scripts/view.js
