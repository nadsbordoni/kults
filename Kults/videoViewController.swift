//
//  videoViewController.swift
//  Kults
//
//  Created by Nádia Bordoni on 30/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit
import AVKit

class videoViewController: AVPlayerViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if myIndex == 0 {
            let video = Bundle.main.url(forResource: "Todas as cenas", withExtension: "mp4")!
            self.player = AVPlayer(url: video)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.player?.play()
    }
}
