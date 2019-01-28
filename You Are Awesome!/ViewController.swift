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
    var imageIndex = -1
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    
    //Code below executes when the app first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Fantastic!",
                        "You Are Da Bomb!"]
        var newindex = -1
        
        repeat {
            newindex = Int.random(in: 1...messages.count-1)
        } while index == newindex
        
        index = newindex
        messageLabel.text = messages[index]
        
        
        repeat {
            newindex = Int.random(in: 0...9)
        } while index == newindex
        
        awesomeImageView.image = UIImage(named: "image\(newindex)")
       

    }
}

