//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jason Tee on 1/13/19.
//  Copyright © 2019 Jason Tee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UITextField!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var index = 0
    var imageIndex = -1
    var awesomePlayer = AVAudioPlayer()
    

    
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
        var soundindex = 0
        var soundName = ""
        
        
        //show text
        repeat {
            newindex = Int.random(in: 1...messages.count-1)
        } while index == newindex
        
        index = newindex
        messageLabel.text = messages[index]
        
        //show an image
        repeat {
            newindex = Int.random(in: 0...9)
        } while index == newindex
        
        awesomeImageView.image = UIImage(named: "image\(newindex)")
       
        //play a sound
        repeat {
            soundindex = Int.random(in: 0...4)
        } while index == soundindex
        soundName = "sound\(soundindex)"
        
        //can we load in the file?
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in\(soundName) couldn't be played")
                }
        } else {
            print("ERROR: file\(soundName) didn't load" )
        }

    }
}

