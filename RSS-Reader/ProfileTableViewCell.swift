//
//  ProfileTableViewCell.swift
//  RSS-Reader
//
//  Created by Seo Kyohei on 2015/09/28.
//  Copyright © 2015年 Kyohei Seo. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setBackImageView()
        setIconImageView()
        setNameLabel()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setBackImageView(){
        backImageView.image = UIImage(named: "cover.png")
        backImageView.contentMode = UIViewContentMode.ScaleAspectFill
        backImageView.clipsToBounds = true
    }
    
    func setIconImageView(){
        iconImageView.image = UIImage(named: "pug.png")
        iconImageView.contentMode = UIViewContentMode.ScaleAspectFill
        iconImageView.clipsToBounds = true
        iconImageView.layer.borderWidth = 2
        iconImageView.layer.borderColor = UIColor.whiteColor().CGColor
        iconImageView.layer.cornerRadius = 5
    }
    
    func setNameLabel(){
        nameLabel.text = "松下 慶大"
        nameLabel.font = UIFont(name: "HiraKakuProN-W3", size: 35)
        nameLabel.textColor = UIColor.whiteColor()
    }
}
