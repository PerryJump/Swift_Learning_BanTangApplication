//
//  YMRegisterViewController.swift
//  DanTang
//
//  Created by Perry_Ji on 16/7/21.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit

class YMRegisterViewController: YMBaseViewController {

    @IBOutlet weak var mobileField: UITextField!
    
    @IBOutlet weak var vertifyButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mobileField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
