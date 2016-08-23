//
//  YMTopHeaderView.swift
//  DanTang
//
//  Created by Perry_Ji on 16/7/22.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit

protocol YMTopHeaderViewDelegate: NSObjectProtocol {
    func topViewDidClickedMoreButton(button: UIButton)
}

class YMTopHeaderView: UIView {
    
    weak var delegate: YMTopHeaderViewDelegate?
    
    /// 查看全部按钮
    @IBAction func viewAllButton(sender: UIButton) {
        delegate?.topViewDidClickedMoreButton(sender)
    }
}
