// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../Class.sol";
import "../Skills/Attack.sol";
import "../Skills/Cleave.sol";

contract Warrior is Class("Warrior", 1, 200, 10, 2, 2, 16) {
    constructor() public {
        _skills.push(new Attack());
        _skills.push(new Cleave());
    }
}