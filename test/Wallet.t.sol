// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/Wallet.sol";

contract WalletTest is Test {
    Wallet public wallet;

    function setUp() public {
        wallet = new Wallet();
    }

    function testSetOwner() public {
        wallet.setOwner(address(0x123));
        assertEq(wallet.owner(), address(0x123));
    }

    function testFailSetOwner() public {
        vm.prank(address(0x123));
        wallet.setOwner(address(0x123));
    }

    function testFailSetOwnerAgain() public {
        wallet.setOwner(address(0x123));
        vm.startPrank(address(0x123));
        wallet.setOwner(address(0x123));
        wallet.setOwner(address(0x123));
        wallet.setOwner(address(0x123));
        wallet.setOwner(address(0x123));
        vm.stopPrank();
        wallet.setOwner(address(0x123));
    }
}
