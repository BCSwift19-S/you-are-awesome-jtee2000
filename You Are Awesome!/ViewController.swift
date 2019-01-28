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
    var index = 0
    
    //Code below executes when the app first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great",
                        "You Are Amazing",
                        "You Are Fantastic!",
                        "You Are Da Bomb"]
        var newindex = -1
        
        repeat {
            newindex = Int.random(in: 1...messages.count-1)
        } while index == newindex
        
        index = newindex
        messageLabel.text = messages[index]
        
        
       
//        messageLabel.text = messages[index]
        
//        if index == messages.count-1 {
//            index = 0
//        }
//        index+=1
        
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//                messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
  
    }
    
    
}

