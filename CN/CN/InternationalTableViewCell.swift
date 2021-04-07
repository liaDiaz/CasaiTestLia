//
//  InternationalTableViewCell.swift
//  CN
//
//  Created by Lia Díaz on 4/6/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit

class InternationalTableViewCell: UITableViewCell {

    @IBOutlet weak var tittleNI: UILabel!
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var fotoNew: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
