//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Artem Androsenko on 26.01.2023.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var smileLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // срабатывает как только прогрузится ячейка, некий аналог viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // вызывается при нажатии на ячейку
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
