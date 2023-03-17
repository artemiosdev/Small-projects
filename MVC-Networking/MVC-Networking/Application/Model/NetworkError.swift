//
//  NetworkError.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 17.03.2023.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
