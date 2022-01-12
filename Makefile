init:
	npx hardhat node
deploy:
	npx hardhat run --network localhost scripts/deploy.js
create-nft:
	npx hardhat run --network localhost scripts/mint.js
view:
	npx hardhat run --network localhost scripts/view.js