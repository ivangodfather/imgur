//
//  GetCatsUseCase.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import XCTest
import Nimble
import RxBlocking
@testable import imgur

class GetCatsUseTests: XCTestCase {

    var sut: GetCatsUseCase!
    var catRepository: MockCatRepository!
    
    override func setUp() {
        super.setUp()
        catRepository = MockCatRepository()
        sut = GetCatsUseCase(catRepository: catRepository)
    }
    
    func testCallsRepositoryWhenExecuting() {
        let _ = try! sut.execute().toBlocking().last()!
        
        expect(self.catRepository.catsWasCalled).to(beTrue())
    }
}
