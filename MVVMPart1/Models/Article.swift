//
//  Article.swift
//  MVVMPart1
//
//  Created by IwasakIYuta on 2021/08/21.
//

import Foundation
// Codableが使えるけどエンコードしない（返信しないJSONに変更しない）のでDecodable（デコードするよーJOSNをSwiftの方に変更する）を使うよー

struct ArticleList: Decodable {
    let articles: [Article]

}

//"description": nullの可能性もあるのでオプショナル型に変更した
struct Article: Decodable {
    
    let title: String
    var description: String?

}
