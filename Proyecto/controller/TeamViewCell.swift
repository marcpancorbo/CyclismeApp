//
//  TeamViewCell.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class TeamViewCell: UITableViewCell {

    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamCountry: UILabel!
    @IBOutlet weak var teamManager: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
