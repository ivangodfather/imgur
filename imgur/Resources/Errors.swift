//
//  Errors.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation

enum ImgurError: Swift.Error {
    case invalidJSON
    case requestFailed
    case serverError
    case unknown
    
    func toString() -> String {
        switch self {
        case .invalidJSON: return "Invalid JSON"
        case .requestFailed: return "Request failed!"
        case .serverError: return "Server error"
        case .unknown: return "Unkown error"
        }
    }
}
