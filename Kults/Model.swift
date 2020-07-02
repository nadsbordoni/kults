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
        Animation(image: UIImage(named: "cena1")! , title: "As aventuras de Lina", episode: [Episode(image: UIImage(named: "cena0")!, title: "O dia que Lina conheceu Oto", description: "Em uma viagem à Parintins,  cidade no norte do Brasil, Lina conhece um novo amigo e uma nova cultura. Embarque nessa viagem!"),Episode(image: UIImage(named: "cena5")!, title: "O dia que Lina conheceu Jean", description: "Em uma viagem a Paris, capital da França, Lina visita a torre Eiffel e faz um novo amigo.  Embarquez pour ce voyage!"),Episode(image: UIImage(named: "cena2")!, title: "O dia que Lina conheceu Angel", description: "Em uma viagem ao Peru, Lina visita Machu Picchu, no alto da cordilheira dos andes, e faz um novo amigo. Embarcarse en ese viaje!")]),
        Animation(image: UIImage(named: "cena2")! , title: "O boto e a menina 2", episode: [Episode(image: UIImage(named: "cena2")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2")]),
        Animation(image: UIImage(named: "cena3")! , title: "Lina 3", episode: [Episode(image: UIImage(named: "cena3")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Oto o Boto kk 4", episode: [Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "breve")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Não sei mais 5", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Somente 6", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")]),
        Animation(image: UIImage(named: "breve")! , title: "Sem criatividade 7", episode: [Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 1"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 2"),Episode(image: UIImage(named: "titleAnimationOne")!, title: "titleAnimationOne", description: "Episodio 3")])
    ]
    
}
