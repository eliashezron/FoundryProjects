// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/console.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        console.log("incrementing", number);
        number++;
        console.log("incremented", number);
    }

    function decrement() public {
        number--;
    }

    function returnNumber() public view returns (uint256) {
        return number;
    }
}
