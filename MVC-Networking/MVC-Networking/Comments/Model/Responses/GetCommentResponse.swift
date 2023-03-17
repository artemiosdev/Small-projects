//
//  GetCommentResponse.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 16.03.2023.
//

import Foundation

// будет служить для заполнени Comments
struct GetCommentResponse {
    typealias JSONType = [String: AnyObject]
    let comments: [Comment]
    
    // разбиваем на массив, перебираем и помещаем в наш comments
    init(json: Any) throws {
        guard let array = json as? [JSONType] else { throw NetworkError.failInternetError }
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dictionary: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
