//
//  CatRepository.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import Alamofire

protocol CatRepositoryProtocol {
    func cats() -> Observable<[Cat]>
}

final class CatRepository: CatRepositoryProtocol {
    
    let imgurAPI: ImgurApiProtocol
    
    init(imgurAPI: ImgurApiProtocol = ImgurMoya()) {
        self.imgurAPI = imgurAPI
    }
    
    func cats() -> Observable<[Cat]> {
        return imgurAPI.getTopCats().map { json in
            if let json = json as? [[String: Any]] {
                return json.flatMap { Cat.init(dict: $0) }
            }
            throw ImgurError.invalidJSON
        }
    }
}
