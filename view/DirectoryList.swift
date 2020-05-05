//
//  DirectoryList.swift
//  view
//
//  Created by Hung-Ming Chen on 2020/1/17.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit

import Foundation
struct addName {
    var name: String
    var phone: String
    var photo: String
}

class DirectoryList: UITableViewController{
    //返回上一頁傳值
    @IBAction func goBacks(segue: UIStoryboardSegue){
    if let controller = segue.source as? EditAddressBookTableViewCell,
        let addName = controller.addNames,
        let row = tableView.indexPathForSelectedRow?.row{            //索引路徑
            addNames[row] = addName                                  //插入addNames此陣列
            userDefault()
            tableView.reloadData()
        }
    }
    //userDefault儲存小型資料 map：每個資料跑一遍
    func userDefault (){
        let userData = UserDefaults.standard
        let data = addNames.map{
            (addName) -> [String:Any] in
            return ["name" : addName.name , "phone" : addName.phone ,  "photo" : addName.photo]
        }
        userData.set(data, forKey: "addNames")

    }
    var addNames = [addName]()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addNames.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "directorylist", for: indexPath ) as! DirectoryCell
        let addName = addNames[indexPath.row]
        cell.nameLable.text = addName.name
        cell.photoImage.image = UIImage(named: addName.photo)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
