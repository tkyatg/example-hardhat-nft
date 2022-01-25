//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract Nft is ERC721 {
    uint256 internal nextTokenId = 1;

    constructor(string memory name, string memory symbol)
        ERC721(name, symbol)
    {}

    function mint() external {
        uint256 tokenId = nextTokenId;
        nextTokenId++;
        super._mint(msg.sender, tokenId);
    }
}
