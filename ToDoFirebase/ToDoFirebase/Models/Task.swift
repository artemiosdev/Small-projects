//
//  Task.swift
//  ToDoFirebase
//
//  Created by Artem Androsenko on 19.02.2023.
//

import Foundation
import Firebase

struct Task {
    let title: String
    let userId: String
    // расположение задачи в базе данных firebase
    let ref: DatabaseReference?
    // по умолчанию задача будет невыполненная
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    
    // получаем текущее значение из базы данных,
    // некий snapshot (снимок/срез) данных на текущий момент
    // это json от firebise который следует разложить
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["comleted"] as! Bool
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userId": userId, "completed": completed]
    }

}
