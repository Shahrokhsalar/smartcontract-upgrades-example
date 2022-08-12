// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Skill {

    string private _name;
    uint private _class;
    uint private _levelRequired;
    uint private _damage;
    uint private _manaCost;
    uint private _skillType;
    
    constructor (
        string memory name,
         uint Class,
          uint LevelRequired,
           uint Damage,
            uint ManaCost,
             uint SkillType) public {

                _name = name;
                _class = Class;
                _levelRequired = LevelRequired;
                _damage = Damage;
                _manaCost = ManaCost;
                _skillType = SkillType; 
             }

function getName() public view returns(string memory) {
    return _name;
}

function getClass() public view returns(uint) {
    return _class;
}

function getLevelRequired() public view returns(uint) {
    return _levelRequired;
}

function getDamage() public view returns(uint) {
    return _damage;
}

function getManaCost() public view returns(uint) {
    return _manaCost;
}

function getSkillType() public view returns(uint) {
    return _skillType;
}


}