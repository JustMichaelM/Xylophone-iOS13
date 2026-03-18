//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Placki są lubiane!")
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        let title: String = sender.currentTitle!
        print(title)
        
        sender.alpha = 0.5
        
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 1.0
        }
        
        playSound(title)
        
    }
    
    func playSound(_ name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")!
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer!.volume = 0.5
        audioPlayer!.play()
    }
    

}

