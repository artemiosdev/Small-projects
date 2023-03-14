//
//  ViewController.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 14.03.2023.
//

import UIKit

class CommentsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var tasks = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension CommentsViewController: UITableViewDelegate {
    
}
extension CommentsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let task = tasks[indexPath.row]
//        content.text = task.title
        content.secondaryText = "detail text"
        cell.contentConfiguration = content
        return cell
    }
    
    
}
