//
//  NSDate+Extension.swift
//  RSS-Reader
//
//  Created by Seo Kyohei on 2015/09/28.
//  Copyright © 2015年 Kyohei Seo. All rights reserved.
//

import Foundation
extension NSDate {
    
    //文字列をNSDateに変換
    class func convertDateFromString(dateString: String) -> NSDate {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss Z"
        let date: NSDate! = formatter.dateFromString(dateString)
        return date
    }
    
    //NSDateを文字列に変換
    func convertStringFromDate() -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyy/MM/dd HH:mm"
        let outputString = formatter.stringFromDate(self)
        return outputString
    }
    
}