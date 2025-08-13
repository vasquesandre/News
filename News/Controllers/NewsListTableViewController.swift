//
//  NewsListTableViewController.swift
//  News
//
//  Created by Andre Vasques on 13/08/25.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var viewModel = ArticleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            await viewModel.loadArticles()
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell
        
        cell?.titleLabel.text = viewModel.articles[indexPath.row].title
        cell?.descriptionLabel.text = viewModel.articles[indexPath.row].safeDescription
        
        return cell!
    }
    
}
