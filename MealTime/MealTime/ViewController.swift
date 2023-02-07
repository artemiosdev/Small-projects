//
//  ViewController.swift
//  MealTime
//
//  Created by Artem Androsenko on 07.02.2023.
//


import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var context: NSManagedObjectContext!
    var user: User!
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let meal = Meal(context: context)
        // присваиваем текущую дату
        meal.date = Date()
        // создадим копию массива для нашего user
        // чтобы добавить туда meals
        let meals = user.meals?.mutableCopy() as? NSMutableOrderedSet
        meals?.add(meal)
        user.meals = meals
        
        // сохраним наш context
        do {
            try context.save()
            tableView.reloadData()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        // если есть какие-либо данные отразить их
        let userName = "Max"
        // получаем данные
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        // получаем по имени
        fetchRequest.predicate = NSPredicate(format: "name == %@", userName)
        
        do {
            let results = try context.fetch(fetchRequest)
            if results.isEmpty {
                user = User(context: context)
                user.name = userName
                try context.save()
            } else {
                user = results.first
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My happy meal time"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.meals?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        // получаем конкретный прием пищи, для конкретной ячейки
        guard let meal = user.meals?[indexPath.row] as? Meal,
            let mealDate = meal.date
            else { return cell }
        
        cell.textLabel!.text = dateFormatter.string(from: mealDate)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard let meal = user.meals?[indexPath.row] as? Meal, editingStyle == .delete else { return }
        context.delete(meal)
        do {
            try context.save()
            tableView.deleteRows(at: [indexPath], with: .automatic)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}

