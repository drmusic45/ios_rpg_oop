//
//  Kimara.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    private let IMMUNE_MAX = 15
    
    override var loot: [String] {
        get {
            return ["Tough Hide", "Kimara Venom", "Rare Trident"]
        }
    }
    
    override var type: [String] {
        get {
            return ["Kimara"]
        }
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attemptAttack(attackPower)
        }
        else {
            return false
        }
    }
}