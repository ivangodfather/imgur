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
                return try response.mapJSON()
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
