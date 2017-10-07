//
//  Cat.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation
@testable import imgur
import XCTest
import Nimble

class CatTests: XCTestCase {
    
    
    
    var sut: Cat!
    let anyName = "Samuel"
    let anyImageURL = "http://data.whicdn.com/images/69287281/large.jpg"
    
    func testLoadsExpectedValuesFromValidDict() {
        sut = Cat(dict: validDict())
        
        expect(self.sut.title).to(equal(anyName))
        expect(self.sut.imageURL.absoluteString).to(equal(anyImageURL))
    }
    
    private func validDict() -> [String: Any] {
        return [Cat.Keys.title: anyName,
                Cat.Keys.image: anyImageURL]
    }
    
}
