//
//  Article.swift
//  News
//
//  Created by Andre Vasques on 13/08/25.
//

import UIKit

struct ArticleList: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
    
    var safeDescription: String {
        description ?? "Sem descrição"
    }
}
