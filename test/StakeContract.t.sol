// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    MockERC20 public mockToken;

    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();
        // stakeContract.stake(0);
    }

    // add parameter in test function to fuzz tests
    function testExample(uint8 amount) public {
        // uint256 amount = 10e18; // without fuzzung
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }
}
