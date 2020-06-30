//
//  DetailViewController.swift
//  Kults
//
//  Created by Victor Vieira on 26/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var animationImage: UIImageView!
    @IBOutlet weak var animationTitle: UILabel!
    
    var tempImage = UIImage()
    var tempLabel = String()
    var chosenAnimation: Animation = Animation(image: UIImage(named: "titleAnimationOne")!, title: "", episode: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationImage.image = chosenAnimation.image
        animationTitle.text = chosenAnimation.title
        
        // Do any additional setup after loading the view.
    }
    

    func setView(animation: Animation){
        chosenAnimation = animation
    }

}
extension DetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenAnimation.episode.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mytablecell") as? MyTableViewCell
        cell?.setTableView(imagem: chosenAnimation.episode[indexPath.row].image, title: chosenAnimation.episode[indexPath.row].title, description: chosenAnimation.episode[indexPath.row].description)
        
        cell?.imagem.layer.cornerRadius = 10
        cell?.imagem.layer.borderColor = UIColor.white.cgColor
        cell?.imagem.layer.borderWidth = 2
        
        return cell!
    }
    
    
}
