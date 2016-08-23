//
//  YMCommentCell.swift
//  DanTang
//
//  Created by Perry_Ji on 16/7/27.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class YMCommentCell: UITableViewCell {

    var comment: YMComment? {
        didSet {
            let user = comment!.user
            let url = user!.avatar_url
            avatarImageView.kf_setImageWithURL(NSURL(string: url!)!)
            nicknameLabel.text = user!.nickname
            contentLabel.text = comment!.content
        }
    }
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nicknameLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
