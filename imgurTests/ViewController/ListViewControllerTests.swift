//
//  ListViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit
import XCTest
import  Nimble
@testable import imgur

class ListViewControllerTests: XCTestCase {
    
    var sut: ListViewController!
    var presenter: MockListViewPresenter!
    
    override func setUp() {
        super.setUp()
        presenter = MockListViewPresenter()
        sut = ListViewController()
        sut.presenter = presenter
    }
    
    func testCallsPresenterViewDidLoad() {
        sut.preloadView()
        
        expect(self.presenter.viewDidLoadWasCalled).to(beTrue())
    }
}


