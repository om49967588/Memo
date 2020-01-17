//
//  ViewController.swift
//  view
//
//  Created by imac on 2020/1/15.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var entry: UIButton!
    @IBOutlet weak var mytextv: UITextField!
    // nmsl
    @IBOutlet weak var delete: UIButton!
    @IBOutlet weak var deleteRow: UITextField!
    @IBOutlet weak var naviGateback: UINavigationItem!
    var mess = [String]()                                  // start with empty array
    var medd = [String]()
    var temp:String?
    var list = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        mytextv.delegate = self
        deleteRow.delegate = self
    }
    
    @IBAction func buttonaction(_ sender: Any) {
        list+=1
        medd.append("\(list)")
        mess.append(mytextv.text!)
        myTable.reloadData()
    }
    
    @IBAction func deleTe(_ sender: Any) {
        if let text = deleteRow.text{
            let text222 = Int(text)!
            medd.removeLast()
            mess.remove(at: text222-1)
            myTable.reloadData()
        }
    }
//        判斷型態錯誤灰階Button
//    func textField(_ textFf: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string:String ) -> Bool{
//        let text = (deleteRow.text! as NSString).replacingCharacters(in: range, with: string)
//        if textFf == deleteRow && Int(text) != nil {
//           delete.isEnabled = true
//           return true
//           } else {
//            delete.isEnabled = false
//           return false
//           }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mess.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = medd[indexPath.row] + ".  " + mess[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

