//
//  MyTableViewCell.swift
//  Kults
//
//  Created by Victor Vieira on 25/06/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setTableView(imagem: UIImage, title: String, description:  String){
        self.imagem.image = imagem
        self.titleLabel.text = title
        self.descriptionLabel.text = description
    }
    
    
    
}
