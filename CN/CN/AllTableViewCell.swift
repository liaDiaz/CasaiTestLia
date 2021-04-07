//
//  AllTableViewCell.swift
//  CN
//
//  Created by Lia Díaz on 4/6/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit

class AllTableViewCell: UITableViewCell {
    
 
    
    @IBOutlet weak var DateA: UILabel!
    @IBOutlet weak var imageNA: UIImageView!
   
    @IBOutlet weak var titlrNA: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
