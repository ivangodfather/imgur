//
//  ApiMoya.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 09/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation
import Moya

enum ApiMoya {
    case cats
}

extension ApiMoya: TargetType {
    var baseURL: URL { return URL(string: "https://api.myservice.com")! }
    
    var basePath: String { return "/api/1/" }
    var path: String {
        switch self {
        case .cats: return basePath + "tags"
        }
    }
    
    var method: Moya.Method { return .get }
    
    var parameters: [String : Any]? {
        switch self {
        default: return nil
        }
    }
    
    var parameterEncoding: ParameterEncoding { return URLEncoding.default }
    
    var sampleData: Data {
        switch self {
        case .cats: return loadJson(file: "cats")
        }
    }
    
    var task: Task { return .request }
    
    var headers: [String: String]? { return ["Content-type": "application/json"] }
    
    private func loadJson(file: String) -> Data {
        guard let url = Bundle.main.url(forResource: file,
                                        withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
                return Data()
        }
        return data
    }
    
}
