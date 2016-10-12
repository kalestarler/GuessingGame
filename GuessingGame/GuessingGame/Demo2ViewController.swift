//
//  Demo2ViewController.swift
//  GuessingGame
//
//  Created by Kale on 11/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class Demo2ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var smallInputTextField: UITextField!
    
    @IBOutlet weak var avatarPictureView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("view loaded")
        
        avatarPictureView.layer.cornerRadius = avatarPictureView.frame.size.height/2
        
        avatarPictureView.layer.borderColor = UIColor.white.cgColor
        
        avatarPictureView.layer.borderWidth = 10.0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
     
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("view did disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backAction(_ sender: AnyObject) {

        let blueVC = storyboard?.instantiateViewController(withIdentifier: "BlueViewController") as! BlueViewController
        
        blueVC.personName = inputTextField.text!
        
        self.navigationController?.pushViewController(blueVC, animated: true)
        
        
        
//        //NAVIGATION CONTROLLER "BACK" ACTION
//        let _ = self.navigationController?.popViewController(animated: true)
        
//        self.dismiss(animated: true, completion: nil)
//        
//        self.dismiss(animated: true) { 
//            
//            //do stuff here that happens AFTER view is dismissed
//        }
        
    }
    
    @IBAction func goToMagentaAction() {
        
        if smallInputTextField.text == "2" {
            
            self.performSegue(withIdentifier: "redToMagentaSegue", sender: nil)
        }
        else {
            
            print("Wrong!")
        }
        
        myOwnFunction(something: "Hi", sender: inputTextField)
        
        
    }
    
    func myOwnFunction(something: String, sender: Any?) {
        
        //check class
        if sender is UITextField {
            
        }
        
        let textField = sender as! UITextField
        
        //check instance
        if textField == inputTextField {
            
            //do something
        }
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "redToGreenSegue" {
            
            let destVC = segue.destination as! GreenViewController
            
            destVC.personName = inputTextField.text!
        }
    }

}
