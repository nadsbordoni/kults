//
//  InteractionViewController.swift
//  Kults
//
//  Created by Meyrillan Silva on 30/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit
import AVFoundation

class InteractionViewController: UIViewController {
    
    var navigation: UINavigationController?
    var audio: AVAudioPlayer?
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToAnimation(_ sender: Any) {
        backToAnimation()
    }
    
    @IBAction func audioChooseOption(_ sender: Any) {
        audio = createPlayer(from: "Escolha")
        audio?.play()
    }
    
    @IBAction func audioOptionOne(_ sender: Any) {
        audio = createPlayer(from: "Piracuru")
        audio?.play()
    }
    
    @IBAction func audioOptionTwo(_ sender: Any) {
        audio = createPlayer(from: "Tacaca")
        audio?.play()
    }
    
    @IBAction func audioOptionThree(_ sender: Any) {
        audio = createPlayer(from: "Manicoba")
        audio?.play()
    }
    
    @IBAction func audioOptionFour(_ sender: Any) {
        audio = createPlayer(from: "Tucupi")
        audio?.play()
    }

    @IBAction func chosenOptionOne(_ sender: Any) {
        audio = createPlayer(from: "EscolheuPiracuru")
        audio?.play()
        backToAnimation()
    }
    
    @IBAction func chosenOptionTwo(_ sender: Any) {
        audio = createPlayer(from: "EscolheuTacaca")
        audio?.play()
        backToAnimation()
    }
    
    @IBAction func chosenOptionThree(_ sender: Any) {
        audio = createPlayer(from: "EscolheuManicoba")
        audio?.play()
        backToAnimation()
    }
    
    @IBAction func chosenOptionFour(_ sender: Any) {
        audio = createPlayer(from: "EscolheuTucupi")
        audio?.play()
        backToAnimation()
    }
    
    func createPlayer(from filename: String) -> AVAudioPlayer? {
      guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
          return nil
      }
      var player = AVAudioPlayer()

      do {
        try player = AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
      } catch {
        print("Error loading \(url.absoluteString): \(error)")
      }

      return player
    }
    
    func backToAnimation() {
        let videoController = videoViewController()
        videoController.navigation = self.navigationController
        present(videoController, animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
