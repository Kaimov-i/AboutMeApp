//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Ilman on 1.05.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var greatingLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var greatingUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "\u{1F91D}"
        if let greatingUser = greatingUser {
            greatingLabel.text = "Welcome, \(greatingUser)!"
        }
    }
}
