//
//  Character.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attPwr: Int = 10
    
    var attPwr: Int {
        get {
            return _attPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            }
            else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attPwr = attackPower
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        
        return true
    }
    
}