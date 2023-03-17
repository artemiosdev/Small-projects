//
//  CommentNetworkService.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 16.03.2023.
//

import Foundation

// местный менеджер по работе с сетью
// имеем нужный адрес, и получаем с него данные
class CommentNetworkService {
    private init() {}
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { json in
            // для передачи в controller, где мы используем этот метод с response
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

