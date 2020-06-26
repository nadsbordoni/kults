//
//  Model.swift
//  Kults
//
//  Created by Victor Vieira on 24/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import Foundation
import UIKit

class Model{
    static let shared: [Animation] = [
        Animation(image: UIImage(named: "cena1")! , title: "A menina e o boto", episode: [Episode(image: UIImage(named: "cena1")!, title: "Lina e o Boto", description: "Lina conhece o boto"),Episode(image: UIImage(named: "cena5")!, title: "Lina ", description: "Lina a menina, Oto o boto"),Episode(image: UIImage(named: "breve")!, title: "Lina no Pará", description: "Lina vai para o Pará comer açaí")]),
        Animation(image: UIImage(named: "cena2")! , title: "O boto e a menina 2", episode: [Episode(image: UIImage(named: "cena2")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2")]),
        Animation(image: UIImage(named: "cena3")! , title: "Lina 3", episode: [Episode(image: UIImage(named: "cena3")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Oto o Boto kk 4", episode: [Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Não sei mais 5", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Somente 6", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Sem criatividade 7", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")])
    ]
    
}
