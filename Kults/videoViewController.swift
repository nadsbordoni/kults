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
    var navigation: UINavigationController?
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if myIndex == 0 {
            let path = Bundle.main.url(forResource: "Todas as cenas", withExtension: "mp4")
            let player = AVPlayer(url: path!)
            self.player = player
            
            
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
        let storyboard = navigation?.storyboard
        let interactionView = storyboard?.instantiateViewController(identifier: "interaction") as? InteractionViewController
        
        self.navigation?.pushViewController(interactionView! , animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
        self.navigation?.setNavigationBarHidden(false, animated: false)
    }
}
