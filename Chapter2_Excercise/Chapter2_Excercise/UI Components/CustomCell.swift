//
//  CustomCell.swift
//  Chapter2_Excercise
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var restView: UIView!
    @IBOutlet weak var bkImg: UIImageView!
    @IBOutlet weak var bkLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
