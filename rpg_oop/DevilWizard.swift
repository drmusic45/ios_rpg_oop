//
//  DevilWizard.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        get {
            return ["Magic Wand", "Dark Amulet", "Salted Pork"]
        }
    }
    
    override var type: String {
        get {
            return "Devil Wizard"
        }
    }
    
    convenience init(newHP: Int, newAttPwr: Int) {
        self.init(startingHp: newHP, attackPower: newAttPwr)    }
}