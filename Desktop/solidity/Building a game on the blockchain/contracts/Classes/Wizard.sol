// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../Class.sol";
import "../Skills/Attack.sol";
import "../Skills/Fireball.sol";

contract Wizard is Class("Wizard", 2, 100, 20, 2, 16, 2) {
    constructor() public {
        _skills.push(new Attack());
        _skills.push(new Fireball());
    }
}