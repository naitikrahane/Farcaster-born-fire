// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bonfire {
    event Burned(address indexed user, string regretHash, uint256 timestamp);

    // simple storage to prove it happened
    mapping(uint256 => string) public burnHistory;
    uint256 public totalBurns;

    function burnRegret(string memory regret) public {
        totalBurns++;
        // Store the text permanently on-chain
        burnHistory[totalBurns] = regret;
        emit Burned(msg.sender, regret, block.timestamp);
    }
}
