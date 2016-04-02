//
//  Enemy.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        get {
            return ["Rusty Dagger", "Cracked Buckler", "Dull Short Sword"]
        }
    }
    
    var type: [String] {
        get {
            return ["Grunt"]
        }
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            
            return loot[rand]
        }
        else {
            return nil
        }
    }
}