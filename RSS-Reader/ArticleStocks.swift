//
//  ArticleStocks.swift
//  RSS-Reader
//
//  Created by Seo Kyohei on 2015/09/28.
//  Copyright © 2015年 Kyohei Seo. All rights reserved.
//

import UIKit

class ArticleStocks: NSObject {
    
    static let sharedInstance = ArticleStocks()
    
    var myArticles: Array<Article> = []
    
    func addArticleStocks(article: Article) {
        self.myArticles.insert(article, atIndex: 0)
        saveArticle()
    }
    
    func saveArticle(){
        var tmpArticles: Array<Dictionary<String, AnyObject>> = []
        for article in self.myArticles {
            let articleDic = ArticleStocks.convertDictionary(article)
            tmpArticles.append(articleDic)
        }
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(tmpArticles, forKey: "myArticles")
        defaults.synchronize()
    }
    
    class func convertDictionary(article: Article) -> Dictionary<String, AnyObject>{
        var dic = Dictionary<String, AnyObject>()
        dic["title"] = article.title
        dic["descript"] = article.descript
        dic["date"] = article.date
        dic["link"] = article.link
        return dic
    }
    
    class func convertArticleModel(dic: Dictionary<String, String>) -> Article {
        let article = Article()
        article.title = dic["title"]!
        article.descript = dic["descript"]!
        article.date = dic["date"]!
        article.link = dic["link"]!
        return article
    }
    
    func getMyArticles(){
        let defaults = NSUserDefaults.standardUserDefaults()
        if let articles = defaults.objectForKey("myArticles") as? Array<Dictionary<String, String>> {
            for dic in articles {
                let article = ArticleStocks.convertArticleModel(dic)
                self.myArticles.append(article)
            }
        }
    }
    
    func removeMyArticle(index: Int){
        self.myArticles.removeAtIndex(index)
        saveArticle()
    }

}
