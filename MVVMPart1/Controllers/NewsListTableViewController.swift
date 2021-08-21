//
//  TableViewController.swift
//  MVVMPart1

//

import UIKit

class NewsListTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setup()
        
    }
    
    private func setup() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string:"https://newsapi.org/v2/top-headlines?country=jp&apiKey=d350da23f44e42ffac319622948514d8")!
        webservice().getarticles(url: url) { _ in
    
        }
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

 
}
