//
//  Animation.swift
//  Kults
//
//  Created by Victor Vieira on 24/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import Foundation
import UIKit

class Animation{
    var image : UIImage
    var title : String
    var episode : [Episode]
    
    init(image:UIImage, title:String, episode:[Episode]){
        self.image = image
        self.title = title
        self.episode = episode
    }
}
