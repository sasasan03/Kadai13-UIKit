//
//  ListTableViewCell.swift
//  Kadai13-UIKit
//
//  Created by sako0602 on 2023/06/18.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cheackMarkImg: UIImageView!
    @IBOutlet weak var todoText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
