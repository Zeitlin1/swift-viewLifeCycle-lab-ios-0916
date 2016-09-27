//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var one: UILabel!
    
    @IBOutlet weak var two: UILabel!
    
    @IBOutlet weak var three: UILabel!
    
    @IBOutlet weak var four: UILabel!
    
    @IBOutlet weak var five: UILabel!
    
    @IBOutlet weak var six: UILabel!
    
    @IBOutlet weak var seven: UILabel!
    
    @IBOutlet weak var eight: UILabel!
    
    @IBOutlet weak var nine: UILabel!
    
    
        var counter = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        if counter < 6 {
        let roll = randomDiceRoll()
        
        updateLabelWithRoll(roll: roll)
        updateDiceWithRoll(roll: roll)
        counter += 1
        print("You rolled a \(roll)")
        } else {
        return
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    
    
    
    func updateDiceWithRoll(roll: Int) {
        
        switch roll {
        
        case 1:
        five.isHidden = false
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        eight.isHidden = true
        nine.isHidden = true
            
        case 2:
        one.isHidden = false
        nine.isHidden = false
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        eight.isHidden = true
            
        case 3:
        three.isHidden = false
        five.isHidden = false
        seven.isHidden = false
        one.isHidden = true
        two.isHidden = true
        four.isHidden = true
        six.isHidden = true
        eight.isHidden = true
        nine.isHidden = true
            
        case 4:
        one.isHidden = false
        three.isHidden = false
        seven.isHidden = false
        nine.isHidden = false
        two.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        eight.isHidden = true
            
        case 5:
        one.isHidden = false
        three.isHidden = false
        five.isHidden = false
        seven.isHidden = false
        nine.isHidden = false
        two.isHidden = true
        four.isHidden = true
        six.isHidden = true
        eight.isHidden = true
            
        case 6:
        one.isHidden = false
        two.isHidden = false
        three.isHidden = false
        seven.isHidden = false
        eight.isHidden = false
        nine.isHidden = false
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        
        default:
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        eight.isHidden = true
        nine.isHidden = true

        
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
