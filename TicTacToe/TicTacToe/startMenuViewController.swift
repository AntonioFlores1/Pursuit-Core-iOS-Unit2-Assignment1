//
//  startMenuViewController.swift
//  TicTacToe
//
//  Created by Pursuit on 11/10/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
import AVFoundation

class startMenuViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Pim Poy", ofType: "wav")!))
        }
        catch {
            print("Damn")
        }
        
    }
    
    @IBAction func MySong(_ sender: UIButton) {
        audioPlayer.play()
        audioPlayer.numberOfLoops = 3
    }
    
 

}
