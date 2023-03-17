//
//  CommentsViewController.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 14.03.2023.
//

import UIKit

class CommentsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CommentNetworkService.getComments { response in
            // заполняем наш tableView
            self.comments = response.comments
            // перегружаем таблицу, так как данные могут быть еще не получены,
            // или получены позже загрузки viewDidLoad
            self.tableView.reloadData()
        }
    }
}

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        return cell
    }
}
