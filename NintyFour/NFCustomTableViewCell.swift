//
//  NFCustomTableViewCell.swift
//  NintyFour
//
//  Created by Udeshika on 15/3/18.
//  Copyright © 2018 Udeshika. All rights reserved.
//

import UIKit

class NFCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nfCellView: UIView!
    @IBOutlet weak var beerImage: UIImageView!
    @IBOutlet weak var beerDetailsLbl: UILabel!
    @IBOutlet weak var beerDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
