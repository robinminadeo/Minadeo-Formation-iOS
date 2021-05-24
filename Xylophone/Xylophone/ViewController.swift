//
//  ViewController.swift
//  Xylophone
//
//  Created by Minadeo Robin on 16/06/2020.
//  Copyright © 2020 Minadeo Robin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(name: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        sender.alpha = 1.0
        }
    }
    
    func playSound(name: String) {
        let url = Bundle.main.url(forResource:name, withExtension:"wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

