//
//  DemoViewController.swift
//  GuessingGame
//
//  Created by Kale on 8/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    @IBOutlet weak var closeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let array = ["Cat", "Dog", "Cat", "Mouse", "Mouse", "Dog", "Bird", "Cat", "Dog", "Cat", "Mouse", "Mouse", "Dog", "Bird", "Cat", "Dog", "Cat", "Mouse", "Mouse", "Dog", "Bird", "Cat", "Dog", "Cat", "Mouse", "Mouse", "Dog", "Bird"]
        
        let resultArray = removeDuplicatesIn(array: array)
        
        for aString in resultArray {
            
            print(aString)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TEST CASE 1: ["Cat", "Dog", "Cat", "Mouse", "Mouse", "Dog", "Bird"]
    
    func removeDuplicatesIn(array: [String]) -> [String] {
        
        var newArray: [String] = []
        
        //do stuff here
        
        for string in array {
            
            if newArray.count == 0 {
                
                newArray.append(string)
            }
            else {
                
                //string is the item in the test array
                
                var found = false
                
                for anotherString in newArray {
                    
                    //anotherString is the item in the newArray
                    
                    if string == anotherString {
                        
                        //string already exists!!
                        found = true
                        
                        break
                    }
                    else {
                        
                    }
                }
                
                if found == false {
                    
                    //string is new
                    
                    newArray.append(string)
                }
            }
        }
        
        
        return newArray
    }
    
    func findLargestNumberInArray(array: [Int]) -> Int {
        
        var answer = 0
        
        //do stuff here
        for number in array {
            
            if number > answer {
                
                answer = number
            }
        }
        
        return answer
    }
    
    func findLargestNumberInArrayOfArrays(arrays: [[Int]]) -> Int {
        
        var answer = 0
        
        //do stuff here
        
        for array in arrays {
            
            let arrayLargest = findLargestNumberInArray(array: array)
            
            if arrayLargest > answer {
                
                answer = arrayLargest
            }
        }
        
        return answer
    }
    

    @IBAction func closeAction(_ sender: AnyObject) {
        
        //CLOSE MODALLY PRESENTED VIEW
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
