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
        
        setupView()
        
        downloadDataFromServer()
    }
    
    func setupView() {
        
        //INITIAL STATE
        instructionLabel.isHidden = true
        inputTextField.isHidden = true
        guessButton.isHidden = true
        gameMessageLabel.isHidden = true
        gameMessageLabel.text = ""
    }
    
    func downloadDataFromServer() {
        
        //downloadFromServer
        
        //
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
        
        //resets number of tries for next round
        numberOfTries = 0
        
        //generates new secret number
        secretNumber = generateRandomNumberUpTo(max: 20)
        
        print(secretNumber)
    }
    
    @IBAction func guessButtonAction(_ sender: AnyObject) {
        
        if inputTextField.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "" {
            
            //Did not enter anything
            
            gameMessageLabel.text = "You didn't enter a valid input"
            
            return
        }
        
        guard let userInput = Int(inputTextField.text!) else {
            
            //no valid number typed in
            
            gameMessageLabel.text = "You didn't enter a valid input"
            
            return
        }
        
        //resets text field for next round
        inputTextField.text = ""
        
        if (userInput == secretNumber) {
         
            numberOfTries = numberOfTries + 1
            
            //Win! End game
            
            if numberOfTries == 1 {
                
                gameMessageLabel.text = "Congratulations! You guessed it right! (\(numberOfTries) try)"
            }
            else {
                
                gameMessageLabel.text = "Congratulations! You guessed it right! (\(numberOfTries) tries)"
            }
            
            startGameButton.setTitle("Start New Game", for: .normal)
            startGameButton.isHidden = false
        }
        else if (userInput > secretNumber) {
            
            gameMessageLabel.text = "Your guess was too big!"
            numberOfTries = numberOfTries + 1
        }
        else if (userInput < secretNumber) {
            
            gameMessageLabel.text = "Your guess was too small!"
            numberOfTries = numberOfTries + 1
        }
    }
    
    func generateRandomNumberUpTo(max: Int) -> Int {
        
        return Int(arc4random_uniform(UInt32(max)) + 1)
    }

}

