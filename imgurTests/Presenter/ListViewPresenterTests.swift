//
//  ListPresenter.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 09/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur
import XCTest
import Nimble

class ListPresenterTests: XCTestCase {
    
    var sut: ListViewPresenter!
    var listView: MockListView!
    var getCats: MockGetCatsUseCase!
    
    override func setUp() {
        super.setUp()
        listView = MockListView()
        getCats = MockGetCatsUseCase()
        sut = ListViewPresenter(listView: listView, getCats: getCats)
    }
    
    func testSetsTitleAfterViewDidLoad() {
        sut.viewDidLoad()
        
        expect(self.listView.title).notTo(be(""))
    }
}

