//
//  ViewController.swift
//  Contacts
//
//  Created by Artem Androsenko on 25.02.2023.
//

import UIKit

class ContactsViewController: UIViewController {
    
    let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: ContactsViewController.self, action: #selector(addBarButtonItemTapped))
    let groupsBarButtonItem = UIBarButtonItem(title: "Groups", style: .plain, target: ContactsViewController.self, action: #selector(groupsBarButtonItemTapped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    
    private func setupNavigationBar() {
        let searchController = UISearchController()
        navigationItem.searchController = searchController
        // чтобы search не пропадал при пролистывании ленты
        navigationItem.hidesSearchBarWhenScrolling = false
        //
        searchController.hidesNavigationBarDuringPresentation = false
        //
        searchController.obscuresBackgroundDuringPresentation = false
        //
        searchController.searchBar.delegate = self
        
        navigationItem.leftBarButtonItem = groupsBarButtonItem
        navigationItem.rightBarButtonItem = addBarButtonItem
        
        // для большого title
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Contacts"
    }
    
}

// MARK: Actions
extension ContactsViewController {
    
    @objc func addBarButtonItemTapped() {
        print(#function)
    }
    
    @objc func groupsBarButtonItemTapped() {
        print(#function)
    }
}

extension ContactsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
