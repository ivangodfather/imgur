//
//  MockCatRepository.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import RxSwift
@testable import imgur

class MockCatRepository: CatRepositoryProtocol {
    
    var catsWasCalled = false
    
    func cats() -> Observable<[Cat]> {
        catsWasCalled = true
        return Observable.just([Cat.fake()])
    }
}

