//
//  TableViewController.swift
//  MVVMPart1

//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    private func setup() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string:"https://newsapi.org/v2/top-headlines?country=jp&apiKey=d350da23f44e42ffac319622948514d8")!
        webservice().getarticles(url: url) { [weak self] articles in
            guard let articles = articles else { return }
            //配列の情報を取得して初期化
            self?.articleListVM = ArticleListViewModel(articles: articles)
            //取得できた時と同時にreloadDataする
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.articleListVM.numberOfRowsInSection(section)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArticleTableViewCell
        
        let article = articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLable.text = article.title
        cell.descriptionLable.text = article.description
        return cell
    }
    
    
}
