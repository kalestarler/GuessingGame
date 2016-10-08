//
//  ViewController.swift
//  GuessingGame
//
//  Created by Kale on 8/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var gameMessageLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    
    var secretNumber: Int = 0
    var numberOfTries: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //INITIAL STATE
        instructionLabel.isHidden = true
        inputTextField.isHidden = true
        guessButton.isHidden = true
        gameMessageLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGameAction(_ sender: AnyObject) {
        
        //GAME STARTED STATE
        instructionLabel.isHidden = false
        inputTextField.isHidden = false
        guessButton.isHidden = false
        gameMessageLabel.isHidden = false
        startGameButton.isHidden = true
        
        secretNumber = generateRandomNumberUpTo(max: 20)
    }
    
    @IBAction func guessButtonAction(_ sender: AnyObject) {
        
        let userInput = Int(inputTextField.text!)!
        
        if (userInput == secretNumber) {
         
            //Win! End game
            gameMessageLabel.text = "Congratulations! You guessed it right!"
        }
        else if (userInput > secretNumber) {
            
            gameMessageLabel.text = "Your guess was too big!"
        }
        else if (userInput < secretNumber) {
            
            gameMessageLabel.text = "Your guess was too small!"
        }
    }
    
    func generateRandomNumberUpTo(max: Int) -> Int {
        
        return Int(arc4random_uniform(UInt32(max)) + 1)
    }

}

