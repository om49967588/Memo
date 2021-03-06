//
//  DirectoryCell.swift
//  view
//
//  Created by Hung-Ming Chen on 2020/1/17.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit

class DirectoryCell: UITableViewCell{
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
