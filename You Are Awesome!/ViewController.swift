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
    var awesomePlayer = AVAudioPlayer()
    var soundindex = 0
    var soundName = ""
    var newindex = 0
    

    
    //Code below executes when the app first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func nonRepeatingRandom(lastnumber: Int, maxval: Int) -> Int {
        var newindex: Int
        repeat {
            newindex = Int.random(in: 0..<maxval)
        } while lastnumber == newindex
        return newindex
    }
    
    
    func playSound(soundName: String) {
        
        //play a sound
        repeat {
            soundindex = Int.random(in: 0...4)
        } while index == soundindex
        
        
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

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Fantastic!",
                        "You Are Da Bomb!"]
        
        
        //show text
        index = nonRepeatingRandom(lastnumber: index, maxval: messages.count)
        messageLabel.text = messages[index]
        
        //show an image
        index = nonRepeatingRandom(lastnumber: index, maxval: 10)
        awesomeImageView.image = UIImage(named: "image\(index)")
       
        playSound(soundName: "sound\(soundindex)")

    }
}

