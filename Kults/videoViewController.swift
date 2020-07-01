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
            // para não voltar pro mesmo vídeo na tela de interação coloquei o index igual a 1 assim que termina o index 0
            myIndex = 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.player?.play()
        
        NotificationCenter.default.addObserver(self, selector: #selector(videoDidEnd), name:
        NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        
    }
    
    @objc func videoDidEnd(notification: NSNotification) {
       let interactionView = storyboard?.instantiateViewController(identifier: "interaction") as? InteractionViewController
       self.navigationController?.pushViewController(interactionView! , animated: true)
    }
    
    deinit {
       NotificationCenter.default.removeObserver(self)
    }
    
}
