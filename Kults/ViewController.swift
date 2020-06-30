//
//  ViewController.swift
//  Kults
//
//  Created by Nádia Bordoni on 15/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.minimumLineSpacing = 42
        layout?.collectionView?.backgroundColor = nil
    }

    let animations:[Animation] = Model.shared
    
    
    var chosenAnimation: Animation = Animation(image: UIImage(named: "titleAnimationOne")!, title: "", episode: [])
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my cell", for: indexPath as IndexPath) as! MyCell
        
        cell.animationImage.image = animations[indexPath.item].image
        cell.layer.cornerRadius = 15
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 3
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let escolha = indexPath.row
        chosenAnimation = animations[escolha]
        let detailView = storyboard?.instantiateViewController(identifier: "page") as? DetailViewController
        /*let label = controllerve?.view.viewWithTag(1) as! UILabel
        label.text = animations[escolha].title
        let imagem = controllerve?.view.viewWithTag(2) as! UIImageView
        imagem.image = animations[escolha].image*/
        detailView?.setView(animation: chosenAnimation)
        self.navigationController?.pushViewController(detailView! , animated: true)
        
    }
    
}

/*extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenAnimation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mytablecell") as? MyTableViewCell
        cell?.setTableView(imagem: chosenAnimation[indexPath.row].image, title: chosenAnimation[indexPath.row].title, description: chosenAnimation[indexPath.row].description)
        return cell!
    }
    
    
}*/
