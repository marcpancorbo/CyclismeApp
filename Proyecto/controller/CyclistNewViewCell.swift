//
//  CyclistNewViewCell.swift
//  Proyecto
//
//  Created by Arnau Solans on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CyclistNewViewCell: UITableViewCell {
    @IBOutlet weak var imageCyclist: UIImageView!
    @IBOutlet weak var nameCyclist: UILabel!
    @IBOutlet weak var isLeader: UILabel!
    @IBOutlet weak var popuCyclist: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
