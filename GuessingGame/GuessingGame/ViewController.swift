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
        
    }
    
    @IBAction func guessButtonAction(_ sender: AnyObject) {
        
    }
    
    

}

