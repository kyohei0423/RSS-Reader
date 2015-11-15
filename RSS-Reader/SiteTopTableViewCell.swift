//
//  SiteTopTableViewCell.swift
//  RSS-Reader
//
//  Created by Seo Kyohei on 2015/09/27.
//  Copyright © 2015年 Kyohei Seo. All rights reserved.
//

import UIKit

class SiteTopTableViewCell: UITableViewCell {
    @IBOutlet weak var siteImageView: UIImageView!
    @IBOutlet weak var imageMaskView: UIView!
    @IBOutlet weak var siteName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setSiteImageView()
        setImageMaskView()
        setNameLabel()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //siteImageViewの装飾
    func setSiteImageView() {
        self.siteImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.layer.masksToBounds = true
    }
    
    //imageMaskViewの装飾
    func setImageMaskView() {
        self.imageMaskView.alpha = 0.6
    }
    
    //nameLabelの装飾
    func setNameLabel() {
        self.siteName.textColor = UIColor.whiteColor()
        self.siteName.textAlignment = NSTextAlignment.Center
        self.siteName.font = UIFont(name: "Helvetica-Light", size: 40)
    }
}