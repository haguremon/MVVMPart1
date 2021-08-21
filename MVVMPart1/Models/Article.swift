//
//  Article.swift
//  MVVMPart1
//
//  Created by IwasakIYuta on 2021/08/21.
//

import Foundation
// Codableが使えるけどエンコードしない（返信しないJSONに変更しない）のでDecodable（デコードするよーJOSNをSwiftの方に変更する）を使うよー

struct Article: Decodable {
    
    let title: String
    let description: String
    
}
