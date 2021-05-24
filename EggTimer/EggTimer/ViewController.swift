//
//  ViewController.swift
//  EggTimer
//
//  Created by Minadeo Robin on 16/06/2020.
//  Copyright © 2020 Minadeo Robin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer!
    
    let eggTimes = ["Soft":3,"Medium":420,"Hard":720]
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        initializeTimer()
    }
    
    func initializeTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCookTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateCookTime() {
        if secondsPassed < totalTime {
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            secondsPassed += 1
        } else {
            timer.invalidate()
            playAlarm()
            progressBar.progress = 1
            titleLabel.text = "DONE!"
        }
    }
    
    func playAlarm(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

