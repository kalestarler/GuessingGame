//
//  GreenViewController.swift
//  GuessingGame
//
//  Created by Kale on 11/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var personName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mainLabel.text = personName!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
