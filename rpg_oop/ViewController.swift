//
//  ViewController.swift
//  rpg_oop
//
//  Created by mobilestudio on 4/1/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHPLabel: UILabel!
    @IBOutlet weak var enemyHPLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        player = Player(newName: "Ed", newHp: 150, newAttPwr: 20)
        chestButton.hidden = true
        generateRandomEnemy()
        
        playerHPLabel.text = "\(player.hp) HP"
        printLabel.text = "\(player.name) attacked \(enemy.type)"
    }

    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(newHP: 50, newAttPwr: 12)
        }
        else {
            enemy = DevilWizard(newHP: 40, newAttPwr: 10)
        }
        
        enemyHPLabel.text = "\(enemy.hp) HP"
        enemyImage.hidden = false
        printLabel.text = "\(player.name) attacked \(enemy.type)"
    }


    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attPwr) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attPwr) HP"
            enemyHPLabel.text = "\(enemy.hp) HP"
        }
        else {
            printLabel.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHPLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
            chestButton.hidden = false
        }
    }
}

