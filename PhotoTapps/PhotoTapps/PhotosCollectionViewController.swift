//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Artem Androsenko on 28.01.2023.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // другой способ настройки FlowLayout, альтернатива extension c UICollectionViewDelegateFlowLayout
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize(width: 100, height: 100)
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 15
//        // направление ячеек
//        layout.scrollDirection = .vertical
//        // можно скрыть полосу прокрутки
//        collectionView.showsVerticalScrollIndicator = false
//

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
    // определим размер ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        // отступы для 2 изображений, т.е 3 штуки (слева, между ними, справа)
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        // доступная ширина для ячеек
        let availableWidth = collectionView.frame.width - paddingWidth
        // ширина объекта
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    // отступы по всем четырем сторонам от секции
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }

    // интервал между последовательными строками или столбцами раздела
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        // использую sectionInserts.left так как у меня отступы равные по всем сторонам
        return sectionInserts.left
    }

    // интервал между последовательными элементами одной строки или столбца
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }

}
