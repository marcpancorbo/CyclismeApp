//
//  CustomViewCell.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 20/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell {
    @IBOutlet weak var event: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
