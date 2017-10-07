//
//  GetCatsUseCase.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import RxSwift
@testable import imgur

class MockGetCatsUseCase: GetCatsUseCaseProtocol {
    
    var executeWasCalled = false
    
    func execute() -> Observable<[Cat]> {
        executeWasCalled = true
        return Observable.just([Cat.fake()])
    }
}
