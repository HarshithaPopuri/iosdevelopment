//
//  ViewController.swift
//  audio-video
//
//  Created by APPLE on 13/10/22.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player = AVAudioPlayer()
    
    
    @IBAction func playBtn(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        player.pause()
    }
    
    @IBAction func replayBtn(_ sender: UIButton) {
        player.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do
        {
            let audioPath = Bundle.main.path(forResource : "song", ofType : "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            
        }
        catch
        {
            
        }
    }


}

