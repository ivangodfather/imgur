//
//  ListWireframeTests.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur
import Foundation
import Nimble
import XCTest

class ListWireframeTests: XCTestCase {
    
    var sut: ListWireframe!
    
    override func setUp() {
        super.setUp()
        sut = ListWireframe()
    }
    
    func testShowsListViewController() {
        
        let vc = sut.listVC()

        expect(vc).to(beAKindOf(ListViewProtocol.self))
    }
}
