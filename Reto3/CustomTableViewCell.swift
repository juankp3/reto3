//
//  CustomTableViewCell.swift
//  Reto3
//
//  Created by Geraldo Emilio Sosa Sosa on 4/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var priorityCel: UITextField!
    @IBOutlet weak var titleCel: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
