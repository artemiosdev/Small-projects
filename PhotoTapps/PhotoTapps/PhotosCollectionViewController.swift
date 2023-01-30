//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Artem Androsenko on 28.01.2023.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    // количество секций
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    // количество элементов в секции
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    // конфигурация ячейки
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        // Configure the cell
        cell.backgroundColor = .blue
        return cell
    }

}

// для настройки конфигурации flow layout for cell
extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
}
