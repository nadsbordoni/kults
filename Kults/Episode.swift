//
//  Episode.swift
//  Kults
//
//  Created by Victor Vieira on 26/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import Foundation
import UIKit

class Episode{
    var image : UIImage
    var title : String
    var description : String
    
    init(image:UIImage, title:String, description:String){
        self.image = image
        self.title = title
        self.description = description
    }
}
