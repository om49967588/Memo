//
//  StartView.swift
//  view
//
//  Created by Hung-Ming Chen on 2020/1/17.
//  Copyright © 2020 imac. All rights reserved.
//

import UIKit

class StartView: UIViewController {

    @IBOutlet weak var changeView: UIButton!
    @IBOutlet weak var naviGate: UINavigationItem!
    
    @IBAction func changeViewr(_ sender: Any) {
        //使用程式碼實現換頁
//        if changeView.isTouchInside {
//            if let gopage = storyboard?.instantiateViewController(withIdentifier: "MemoUi") {
//                self.navigationController?.pushViewController(gopage, animated: true)
//            }
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

