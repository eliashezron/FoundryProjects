// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "solmate/tokens/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20("Token", "TKN", 18) {
        _mint(msg.sender, 1000000000000000000000000);
    }
}

import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnerOz is Ownable {}
