//
//  AppleTableViewCell.swift
//  Week2Assessment - (Wei Liang)
//
//  Created by Tan Wei Liang on 18/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

class AppleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var appleImageView: UIImageView!
    
    @IBOutlet weak var launchDateLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
