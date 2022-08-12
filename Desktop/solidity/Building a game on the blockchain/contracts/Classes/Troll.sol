// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


import "../Class.sol";
import "../Skills/Attack.sol";

contract Rogue is Class("Troll", 11, 50, 0, 2, 0, 2) {
    constructor() public {
        _skills.push(new Attack());
    }
}