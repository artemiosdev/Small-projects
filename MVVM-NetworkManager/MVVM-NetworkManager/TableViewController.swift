//
//  TableViewController.swift
//  MVVM-NetworkManager
//
//  Created by Artem Androsenko on 20.03.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.fetchMoview { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // и допустим вот такой метод
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        // или можно сделать для ячейки отдельную ViewModel
        
        return cell
    }
}

