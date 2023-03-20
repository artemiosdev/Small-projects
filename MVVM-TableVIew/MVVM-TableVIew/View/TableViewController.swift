//
//  TableViewController.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 18.03.2023.
//

import UIKit

class TableViewController: UITableViewController {

    private var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell,
        let viewModel = viewModel else { return TableViewCell() }
        
        // генерируем новую viewModel для нашей ячейки
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        return tableViewCell
    }

    // переход на DetailViewController при нажатии на ячейку
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        // определяем/фиксируем выделенную ячейку таблицы
        viewModel.selectRow(atIndexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }
        if identifier == "detailSegue" {
            if let dvc = segue.destination as? DetailViewController {
                // генерируем новую ViewModel для DetailViewController
                dvc.viewModel = viewModel.viewModelForSelecterRow()
            }
        }
        
    }
}
