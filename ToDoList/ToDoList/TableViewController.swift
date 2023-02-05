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
    
    // метод вызовающий Context
    private func getContext() ->  NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    
    // сохраним данные in Core Data
    private func saveTask(withTitle title: String) {
        let context = getContext()
        guard let entity = NSEntityDescription.entity(forEntityName: "Task", in: context) else { return }
        let taskObject = Task(entity: entity, insertInto: context)
        taskObject.title = title
        do {
            try context.save()
            tasks.append(taskObject)
            
            // чтобы новая задача была всегда первой по счету
            // tasks.insert(taskObject, at: 0)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    // загрузим хранимые данные из Core Data на экран
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let context = getContext()
        // запрос на получение хранящийся объектов
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        // сортировка по названию, возрастание/убывание
        let sortDescriptor = NSSortDescriptor(key: "title", ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            tasks = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // удалим данные из Core Data:
        
        let context = getContext()
        // запрос на получение хранящийся объектов
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        // пытаемся получить все результаты из Context
        if let results = try? context.fetch(fetchRequest) {
            for object in results {
                context.delete(object)
            }
        }
        do {
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        //
        
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
