//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jason Tee on 1/13/19.
//  Copyright © 2019 Jason Tee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UITextField!
    
    //Code below executes when the app first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
                messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }
  
    }
    
    
}

