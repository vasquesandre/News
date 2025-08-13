//
//  WebServices.swift
//  News
//
//  Created by Andre Vasques on 13/08/25.
//

import UIKit

class WebServices {
    
    func getArticles(url: URL) async throws -> [Article] {
        let (data, _) = try await URLSession.shared.data(from: url)
        let articleList = try JSONDecoder().decode(ArticleList.self, from: data)
        return articleList.articles
    }
    
}
