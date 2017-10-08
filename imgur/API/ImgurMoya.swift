//
//  ApiService.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Moya
import RxSwift


class ImgurMoya: ImgurApiProtocol {
    
    let provider: RxMoyaProvider<ApiMoya>
    
    init(provider: RxMoyaProvider<ApiMoya> = RxMoyaProvider<ApiMoya>(stubClosure: MoyaProvider.immediatelyStub)) {
        self.provider = provider
    }
    
    func getTopCats() -> Observable<Any> {
        return self.provider.request(.cats).map { response in
            do {
                _ = try response.filterSuccessfulStatusCodes()
                return response.mapJSON
            } catch MoyaError.statusCode(_) {
                throw ImgurError.serverError
            } catch MoyaError.jsonMapping(_) {
                throw ImgurError.invalidJSON
            } catch {
                throw ImgurError.unknown
            }
        }
    }
}


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
