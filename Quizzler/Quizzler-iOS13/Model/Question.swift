//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Artem Androsenko on 2.03.2023
//

import Foundation
struct Question {
    let text: String
    let answer: String
    
    init (q: String, a: String) {
        text = q
        answer = a
    }
}

