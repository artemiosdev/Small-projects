//
//  DetailViewController.swift
//  UIContainerView
//
//  Created by Artem Androsenko on 24.11.2022.
//

import UIKit

class DetailViewController: UITableViewController {
    let imageNameArray = Track.getTrackList()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
    }
    
    // MARK: - Table view data source
    // возвращает кол-во строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNameArray.count
    }
    
    // создание ячейки по Identifier и работа с ячейкой
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        // устаревшие свойства
        // cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        // cell.textLabel?.text = imageNameArray[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        let track = imageNameArray[indexPath.row]
        // Configure content.
        content.image = UIImage(named: track.title)
        content.text = track.song
        content.secondaryText = track.artist
        content.textProperties.numberOfLines = 0
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = parent as? ViewController {
            let track = imageNameArray[indexPath.row]
            viewController.artistLabel.text = track.artist
            viewController.songLabel.text = track.song
            viewController.imageCover.image = UIImage(named: track.title)
        }
    }
}
