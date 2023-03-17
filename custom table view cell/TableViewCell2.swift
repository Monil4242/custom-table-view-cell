//
//  TableViewCell2.swift
//  custom table view cell
//
//  Created by monil sojitra on 08/02/23.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
