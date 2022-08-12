// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Game.sol";
import "./Character.sol";
import "./Skill.sol";

contract CombatEngine {
        
        uint private PYHSICAL_SKILL = 1;
        uint private MAGICAL_SKILL = 2;
    
        function attack(Character attacker, Character defender, Skill skill) public view returns (uint) {
            if (PYHSICAL_SKILL == skill.getSkillType()) {
                return ((attacker.getStrength() * 2) + attacker.getAgility()) - 
                    ((defender.getAgility() * 2) + defender.getStrength()) + 
                    (attacker.getAgility() / 4);
            } else if (MAGICAL_SKILL == skill.getSkillType()) {
                return ((attacker.getIntelligence() * 2) + attacker.getAgility() + skill.getDamage()) - 
                    ((defender.getAgility() * 2) + defender.getIntelligence());
            }
            return 0;
        }
    }