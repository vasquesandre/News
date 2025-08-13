//
//  ArticleViewModel.swift
//  News
//
//  Created by Andre Vasques on 13/08/25.
//

import UIKit

@MainActor
class ArticleViewModel {
    private let webServices = WebServices()
    var articles: [Article] = []
    
    func loadArticles() async {
        do {
            let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=ec2231fc0c4d4013a4167da6bf8c7213")!
            self.articles = try await webServices.getArticles(url: url)
        } catch {
            print("Erro ao carregar artigos: \(error)")
        }
    }
}
