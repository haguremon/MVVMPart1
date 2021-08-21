//
//  Webservice.swift
//  MVVMPart1
//
//
//d350da23f44e42ffac319622948514d8
//  Created by IwasakIYuta on 2021/08/21.
//https://newsapi.org/v2/top-headlines?country=jp&apiKey=d350da23f44e42ffac319622948514d8
//APIを使って情報を取り出す

import Foundation

class webservice {
    //Closureを使ってJsonデータを取得する遅延評価ってやつコールバック
    func getarticles(url: URL , completion: @escaping ([Article]?) -> ()) {
                                            //[Article]?にしてる理由は空の場合を考慮してるため
        URLSession.shared.dataTask(with: url) { data, response, error in

            guard let data = data ,
                  //let response = response as? HTTPURLResponse,
                  error == nil else { return }
    
            let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
            
            if let articleList = articleList {
                
                completion(articleList.articles)
            
            }
            
            
            
        } .resume()
        
        
    }
    
}

