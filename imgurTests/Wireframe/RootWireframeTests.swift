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
        
        let vc = self.uiWindow.rootViewController
        expect(vc).to(beAKindOf(UINavigationController.self))
        XCTAssertTrue(vc is UINavigationController)

        if let navVC = vc as? UINavigationController {
            expect(navVC.viewControllers.first).to(equal(listVC))
        }
    }
}
