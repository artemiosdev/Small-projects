//
//  CommentCell.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 15.03.2023.
//

import Foundation
import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    // при помощи нашей модели Comment,
    // заполним наши ячейки в view
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
        
    }
}
