//
//  EditAddressBookTableViewCell.swift
//  view
//
//  Created by Hung-Ming Chen on 2020/1/20.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit

struct NotificationObjectKey {
    static let addressBook = "addressBook"
}

extension Notification.Name{
    static let addressBookDidChange = Notification.Name("addressBookDidChange")
}
class EditAddressBookTableViewCell: UIViewController{
    @IBOutlet weak var perSonal: UITableView!
    var addNames: addName?
    var imageName = "ironMan"
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var nameLable: UITextField!
    @IBOutlet weak var phoneLable: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let addName = addNames{
            nameLable.text = addName.name
            phoneLable.text = addName.phone
            photoImage.image = UIImage(named: addName.photo)
            imageName = addName.photo
        }
    }

    @IBAction func InsertBook(_ sender: Any) {
        guard let name = nameLable.text, name.count > 0 else{
            return
        }
        guard let phone = phoneLable.text, phone.count > 0 else{
            return
        }
        if addNames == nil {
            addNames = addName(name: name, phone: phone, photo: imageName)
            view.endEditing(true)
            dismiss(animated: true) {
                NotificationCenter.default.post(name: .addressBookDidChange,
                                                object: nil,
                                                userInfo: [NotificationObjectKey.addressBook : self.addNames!])
            }//dismiss：移除此頁面
        }else{
            addNames?.name = name
            addNames?.phone = phone
            addNames?.photo = imageName
        }
    }
}
