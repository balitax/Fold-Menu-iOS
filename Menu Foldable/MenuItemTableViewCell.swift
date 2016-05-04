//
//  MenuItemTableViewCell.swift
//  Menu Foldable
//
//  Created by Agus Cahyono on 5/4/16.
//  Copyright © 2016 Agus Cahyono. All rights reserved.
//

import UIKit

class MenuItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuName: UILabel!
    
    static func createNib() -> UINib {
        return UINib(nibName: "MenuItemTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
