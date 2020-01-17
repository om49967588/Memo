//
//  DirectoryCell.swift
//  view
//
//  Created by Hung-Ming Chen on 2020/1/17.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit
import Foundation
struct addName {
    var name: String
    var phone: Int
    var photo: String
}

class directoryCell: UITableViewCell{
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
