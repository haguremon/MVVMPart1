//
//  ArticleViewModel.swift
//  MVVMPart1
//
//  Created by IwasakIYuta on 2021/08/21.
//Article View Modelは、記事を表示する責任がある

//ArticleVMモデルは、ユーザーインターフェースに何らかの情報やデータを提供するためのVM


import Foundation

//*1複数の記事をTableViewに表示するためのVMを作成する
struct ArticleListViewModel {
    //複数の記事の配列型のプロパティを作成
    let articles: [Article]

}

extension ArticleListViewModel {
    //セクションの数は今の所　1
    var numberOfSections : Int {
        
        return 1
        
    }
   //記事を表示する数
    func numberOfRowsInSection(_ section: Int) -> Int {
        
        return self.articles.count
    
    }
    //特定の記事を作成して返す機能　//cellの所で使うお
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        
        let article = self.articles[index]
        
        return ArticleViewModel(article)
        
    }
    
    
}




//1　一つの記事を作成するVM
struct ArticleViewModel {
    
    //Articleモデルに参照するプロパティを作成
    private let article: Article
    
}

//データをユーザーインターフェイスに提供する
//Articleモデルのタイトルとdescriptionを表示するようにする
//extensionを使うことによって可読性を上げる

//2　Articleモデルを引数にとるイニシャライザを設定する
extension ArticleViewModel {
    //ここで記事の情報を貰う
    init(_ article: Article) {
        self.article = article
    }
    
}
//　3モデルのプロパティであるarticleのtitleとdescriptionを取得する
extension ArticleViewModel {
    
    var title: String {
        
        return article.title
    }
    var description: String {
        
        if let description = article.description {
            
            return description
            
        }
        
        return ""
        
    }
    
}


