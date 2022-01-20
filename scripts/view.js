const Web3 = require("web3");
require("dotenv").config();

// ADDRESS, KEY and URL are examples.
const CONTRACT_ADDRESS = process.env.CONTRACT_ADDRESS;
const PUBLIC_KEY = process.env.PUBLIC_KEY;
const PROVIDER_URL = process.env.PROVIDER_URL;

async function viewNFT() {
  const web3 = new Web3(PROVIDER_URL);
  const contract = require("../artifacts/contracts/MYNFT.sol/MYNFT.json");
  const nftContract = new web3.eth.Contract(contract.abi, CONTRACT_ADDRESS);
  nftContract.methods.balanceOf(PUBLIC_KEY).call().then(console.log);
}

viewNFT();
