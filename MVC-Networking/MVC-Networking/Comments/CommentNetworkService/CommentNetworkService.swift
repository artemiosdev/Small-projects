//
//  CommentNetworkService.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 16.03.2023.
//

import Foundation

class CommentNetworkService {
    private init() {}
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { json in
            
        }
    }
}

