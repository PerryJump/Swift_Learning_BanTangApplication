//
//  YMSettingCell.swift
//  DanTang
//
//  Created by Perry_Ji on 16/7/23.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit

class YMSettingCell: UITableViewCell {
    
    var setting: YMSetting? {
        didSet {
            iconImageView.image = UIImage(named: setting!.iconImage!)
            leftLabel.text = setting!.leftTitle
            rightLabel.text = setting!.rightTitle
            disclosureIndicator.hidden = setting!.isHiddenRightTip!
            switchView.hidden = setting!.isHiddenSwitch!
        }
    }
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var disclosureIndicator: UIImageView!
    
    @IBOutlet weak var switchView: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
