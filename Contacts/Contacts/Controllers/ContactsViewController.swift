//
//  ViewController.swift
//  Contacts
//
//  Created by Artem Androsenko on 25.02.2023.
//

import UIKit

class ContactsViewController: UIViewController {
    
    let profile = User(fullname: "Artem Androsenko", imageString: "human1", firstCharacter: "A", id: 20)
    let favouriteUsers = Bundle.main.decode([User].self, from: "favouriteUsers.json")
    let contactUsers = Bundle.main.decode([User].self, from: "contactUsers.json")
    
    let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: ContactsViewController.self, action: #selector(addBarButtonItemTapped))
    let groupsBarButtonItem = UIBarButtonItem(title: "Groups", style: .plain, target: ContactsViewController.self, action: #selector(groupsBarButtonItemTapped))
    
    enum Section: Int {
        case profile
        case favourites
        case contacts
    }
    
    var dataSource: UICollectionViewDiffableDataSource<Section, User>! = nil
    var currentSnapshot: NSDiffableDataSourceSnapshot<Section, User>! = nil
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        setupCollectionView()
        createDataSourse()
        reloadData()
    }
    
    
    private func setupNavigationBar() {
        let searchController = UISearchController()
        navigationItem.searchController = searchController
        // чтобы search не пропадал при пролистывании ленты
        navigationItem.hidesSearchBarWhenScrolling = false
        // отображение панель навигации при поиске, должна ли быть скрыта
        searchController.hidesNavigationBarDuringPresentation = false
        // скрыто ли базовое содержимое во время поиска
        searchController.obscuresBackgroundDuringPresentation = false
        
        searchController.searchBar.delegate = self
        
        navigationItem.leftBarButtonItem = groupsBarButtonItem
        navigationItem.rightBarButtonItem = addBarButtonItem
        
        // для большого title
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Contacts"
    }
    
    // создаем и настраиваем коллекцию и ячейки
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .gray
        view.addSubview(collectionView)
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: ProfileCell.reuseId)
        collectionView.register(FavouriteCell.self, forCellWithReuseIdentifier: FavouriteCell.reuseId)
        collectionView.register(ContactCell.self, forCellWithReuseIdentifier: ContactCell.reuseId)
    }
    
    private func reloadData() {
        currentSnapshot = NSDiffableDataSourceSnapshot<Section, User>()
        
        currentSnapshot.appendSections([.profile, .favourites, .contacts])
        currentSnapshot.appendItems([profile], toSection: .profile)
        currentSnapshot.appendItems(favouriteUsers, toSection: .favourites)
        currentSnapshot.appendItems(contactUsers, toSection: .contacts)
        
        
        dataSource.apply(currentSnapshot, animatingDifferences: true)
    }
    
    // MARK: DataSourse
    func createDataSourse() {
        dataSource = UICollectionViewDiffableDataSource<Section, User>(collectionView: collectionView, cellProvider: { collectionView, indexPath, user in
            guard let section = Section(rawValue: indexPath.section) else { fatalError("Unknown section type")}
            
            switch section {
            case .profile:
                return self.configure(collectionView: collectionView, cellType: ProfileCell.self, with: user, for: indexPath)
            case .favourites:
                return self.configure(collectionView: collectionView, cellType: FavouriteCell.self, with: user, for: indexPath)
            case .contacts:
                return self.configure(collectionView: collectionView, cellType: ContactCell.self, with: user, for: indexPath)
            }
        })
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

// MARK: UISearchBarDelegate
extension ContactsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
