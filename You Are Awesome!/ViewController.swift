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
        messageLabel.text = "You Are Awesome"
        messageLabel.textColor = UIColor.green
  
    }
    
    
    @IBAction func secondButton(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
    }
    
}

