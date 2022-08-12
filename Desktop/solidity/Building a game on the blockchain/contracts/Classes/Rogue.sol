// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../Class.sol";
import "../Skills/Attack.sol";
import "../Skills/Backstab.sol";

contract Rogue is Class("Rogue", 3, 150, 15, 10, 5, 5) {
    constructor() public {
        _skills.push(new Attack());
        _skills.push(new Backstab());
    }
}