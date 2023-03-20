//
//  Box.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 20.03.2023.
//

// некий наблюдатель за объектом, класс-обертка,
// он будет оборачивать интересующие нас свойства
// и к этим свойствам можем добавлять наших наблюдателей
// и они смогут меняться при изменении свойства в view model

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    // свойство наблюдатель
    var listener: Listener?
    
    // свойство за которым будем наблюдать наш наблюдатель
    var value: T {
        // при изменении свойства срабатывает
        didSet {
            listener?(value)
        }
    }
    
    // связываем
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
