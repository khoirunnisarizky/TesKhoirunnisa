//
//  PictureCell.swift
//  Alodoc
//
//  Created by khoirunnisa' rizky noor fatimah on 31/10/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class PictureCell: UITableViewCell {

    
    @IBOutlet weak var cover: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
