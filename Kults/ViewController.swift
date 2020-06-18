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

    let animations = [UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne"),UIImage(named: "titleAnimationOne")]
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my cell", for: indexPath as IndexPath) as! MyCell
        
        cell.animationImage.image = animations[indexPath.item]
        cell.layer.cornerRadius = 15
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 3
        return cell
        
    }
    
}

