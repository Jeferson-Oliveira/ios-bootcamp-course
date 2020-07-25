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

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func noteTouched( sender: UIButton) {
        playSound(note: sender.titleLabel?.text ?? "")
    }

    private func playSound(note: String) {
        guard
            let url = Bundle.main.url(forResource: note, withExtension: "wav")
            else { return }
        
        player = try? AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
        player?.play()
    
    }
}

