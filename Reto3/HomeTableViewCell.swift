//
//  HomeTableViewCell.swift
//  Reto3
//
//  Created by Juan Kuga Palomino on 5/12/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var prioritylabel: UILabel!
    @IBOutlet weak var titlelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
