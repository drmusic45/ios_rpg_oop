//
//  Player.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    convenience init(newName: String, newHp: Int, newAttPwr: Int) {
        self.init(startingHp: newHp, attackPower: newAttPwr)
        
        _name = newName
    }
}