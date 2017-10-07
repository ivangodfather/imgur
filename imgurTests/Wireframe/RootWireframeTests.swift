//
//  RootWireframe.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur
import Foundation
import Nimble
import XCTest


class RootWireframeTests: XCTestCase {
    
    var sut: RootWireframe!
    var uiWindow: MockUIWindow!
    var listWireframe: MockListWireframe!
    
    override func setUp() {
        super.setUp()
        uiWindow = MockUIWindow()
        listWireframe = MockListWireframe()
        sut = RootWireframe(window: uiWindow,
                            listWireframe: listWireframe)
    }
    
    func testFirstViewControllerIsListVC() {
        let listVC = listWireframe.listVC()
        
        sut.showFirstViewController()
        
        expect(self.sut.window.rootViewController).to(equal(listVC))
    }
}
