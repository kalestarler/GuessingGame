//
//  DemoMessageCell.swift
//  GuessingGame
//
//  Created by Kale on 13/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class DemoMessageCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        userImageView.clipsToBounds = true
        userImageView.layer.cornerRadius = userImageView.frame.size.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(message: Message) {
        
        self.timeLabel.text = message.timestamp
        self.usernameLabel.text = message.username
        self.contentLabel.text = message.message
        self.userImageView.image = UIImage(named: message.imageFilename)
    }

}
