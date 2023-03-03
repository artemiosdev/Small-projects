//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Artem Androsenko on 3.03.2023
//

import Foundation
struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    init (q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}

