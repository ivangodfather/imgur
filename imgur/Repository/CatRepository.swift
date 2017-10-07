//
//  CatRepository.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation
import RxSwift

protocol CatRepositoryProtocol {
    func cats() -> Observable<[Cat]>
}

final class CatRepository: CatRepositoryProtocol {
    func cats() -> Observable<[Cat]> {
        return Observable.just([Cat.init(dict: ["title": "My Cat", "image": "http://www.petmd.com/sites/default/files/petmd-cat-happy-13.jpg"])!])
    }
}
