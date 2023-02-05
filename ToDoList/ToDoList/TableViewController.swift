//
//  TableViewController.swift
//  ToDoList
//
//  Created by Artem Androsenko on 03.02.2023.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    var tasks: [Task] = []
    
    @IBAction func saveTask(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "New Task", message: "Please add a new task", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
            let textField = alertController.textFields?.first
            if let newTaskTitle = textField?.text {
                self.saveTask(withTitle: newTaskTitle)
                // перезагружаем таблицу
                self.tableView.reloadData()
            }
        }
        alertController.addTextField { _ in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { _ in }
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        // отобразим наш alertController
        present(alertController, animated: true, completion: nil)
    }
    
    // save info in Core Data
    private func saveTask(withTitle title: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        guard let entity = NSEntityDescription.entity(forEntityName: "Task", in: context) else { return }
        let taskObject = Task(entity: entity, insertInto: context)
        taskObject.title = title
        do {
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let task = tasks[indexPath.row]
        content.text = task.title
        content.secondaryText = "detail text"
        cell.contentConfiguration = content

        return cell
    }


}
