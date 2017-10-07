//
//  ListViewPresenterTests.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur

class MockListViewPresenter: ListViewPresenterProtocol {
    
    var viewDidLoadWasCalled = false
    
    func viewDidLoad() {
        viewDidLoadWasCalled = true
    }
}
