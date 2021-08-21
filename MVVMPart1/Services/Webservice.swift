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
    func getarticles(url: URL , completion: @escaping ([Any]) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data ,
                  //let response = response as? HTTPURLResponse,
                  error == nil else { return }
            print(data)
        
        } .resume()
        
        
    }
    
}

