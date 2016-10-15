//
//  Item2ViewController.swift
//  GuessingGame
//
//  Created by Kale on 13/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class Item2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var arrayOfMessages: [Message] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Populate test data
        arrayOfMessages.append(Message(message: "Hello 1", timestamp: "8.22 PM", username: "User 1", imageFilename: "najib1"))
        arrayOfMessages.append(Message(message: "Hello 2", timestamp: "8.25 PM", username: "User 2", imageFilename: "najib2"))
        arrayOfMessages.append(Message(message: "Hello 3", timestamp: "8.27 PM", username: "User 3", imageFilename: "najib3"))
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
        // Refresh your view with new list of data
        mainTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table View DataSource Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        // Number of groups of data
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Amount of data per group
        return arrayOfMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Message_Cell") as! DemoMessageCell
        
        // Get line of data
        let message = arrayOfMessages[indexPath.row]
        
        // Configure data to be displayed
        cell.configureCell(message: message)
        
        return cell
    }
    
    // MARK: Table View Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // If user taps on a row
        print("User tapped on row: \(indexPath.row)")
        
        self.performSegue(withIdentifier: "GoToMessageDetailsVC", sender: nil)
    }
    
    // MARK: Scroll View Delegate Methods
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print("Scroll view did scroll")
        
        print(scrollView.contentOffset.y)
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
        print("Scroll view did end dragging")
    }

    func refresh() {
        
        print("refresh data")
    }
    
}
