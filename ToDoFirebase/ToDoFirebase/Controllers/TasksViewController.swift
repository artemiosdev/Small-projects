//
//  TasksViewController.swift
//  ToDoFirebase
//
//  Created by Artem Androsenko on 17.02.2023.
//

import UIKit
import Firebase

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var user: User!
    var ref: DatabaseReference!
    var tasks = Array<Task>()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .clear
        cell.textLabel?.text = "This is cell number \(indexPath.row)"
        cell.textLabel?.textColor = .white
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // создадим пользователя user
        guard let currentUser = Auth.auth().currentUser else { return }
        user = User(user: currentUser)
        // добираемся до конкретного пользователя и его задач
        ref = Database.database().reference(withPath: "users").child(String(user.uid)).child("tasks")
    }
    
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "New Task", message: "Add new task", preferredStyle: .alert)
        alertController.addTextField()
        let save = UIAlertAction(title: "Save", style: .default) { [weak self] _ in
            
            guard let textField = alertController.textFields?.first, textField.text != "" else {
                // добавим alert сообщающий пользователю о необходимости ввести данные в поле
                let errorAlertController = UIAlertController(title: "Error", message: "The task should not be empty", preferredStyle: .alert)
                let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
                errorAlertController.addAction(cancel)
                self?.present(errorAlertController, animated: true, completion: nil)
                return
            }
            
            // создадим задачу
            let task = Task(title: textField.text!, userId: (self?.user.uid)!)
            let taskRef = self?.ref.child(task.title.lowercased())
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alertController.addAction(save)
        alertController.addAction(cancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // выход из профиля
    @IBAction func signOutTapped(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        // выходим на LoginView
        dismiss(animated: true, completion: nil)
    }
    
}
